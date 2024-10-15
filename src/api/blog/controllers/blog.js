const { getPagination, getMeta } = require("../../../services/pagination");
const { Op, literal, or } = require("sequelize");
const { errorResponse } = require("../../../services/errorResponse");
const priceFilter = require("../../product/services/priceFilter");


exports.create = async (req, res) => {
  try {
    const sequelize = req.db;
    const slug = req.body.title.split(" ").join("-")
    const blog = await sequelize.models.Blog.create({ ...req.body, slug });
    if (req.body.gallery && req.body.gallery.length) {
      let obj = req.body.gallery.flatMap((item) => {
        return { MediaId: item, BlogId: blog.id };
      });
      await sequelize.models.Blog_gallery.bulkCreate(obj);
    }
    return res.status(200).send({ message: "blog created successfully", data: blog });
  } catch (error) {
    console.log(error);
    return res.status(500).send(errorResponse({ status: 500, message: "some internal server error occured!" }));
  }
};

exports.find = async (req, res) => {
  try {
    const sequelize = req.db;
    const query = req.query;
    const pagination = await getPagination(query.pagination)
    const blogs = await sequelize.models.Blog.findAndCountAll({
      limit: pagination.limit,
      offset: pagination.offset,
      include: [{ model: sequelize.models.Media, as: "thumbnail", attributes: ["id", "url"] }],
    });

    const meta = await getMeta(pagination, blogs.count)
    return res.status(200).send({ data: blogs.rows, meta });
  } catch (error) {
    console.log(error);
    return res.status(500).send(errorResponse({ status: 500, message: "some internal server error occured!" }));
  }
};

exports.findOne = async (req, res) => {
  try {
    const sequelize = req.db;
    const { id } = req.params;
    const blog = await sequelize.models.Blog.findByPk(id, {
      include: [
        {
          model: sequelize.models.Media, as: "thumbnail", attributes: ["id", "url"]
        }
      ],
    });
    if (!blog) {
      return res.status(404).send(errorResponse({ status: 404, message: "blog not found!", details: "blog ID seems to be invalid" }));
    }
    return res.status(200).send({ data: blog });
  } catch (error) {
    console.log(error);
    return res.status(500).send(errorResponse({ status: 500, message: "some internal server error occured!" }));
  }
};


exports.update = async (req, res) => {
  try {
    const sequelize = req.db;
    const { id } = req.params;
    const body = req.body;
    const getBLog = await sequelize.models.Blog.findByPk(id, {
      include: [{ model: sequelize.models.Media, as: "gallery", }]
    });

    if (getBLog) {
      const blog = await sequelize.models.Blog.update(req.body, {
        where: { id },
        returning: true
      });

      const galleryIds = getBLog.gallery.map(g => g.MediaId);
      const reqGalleryIds = req.body.gallery || [];
      const toBeDeletedIds = galleryIds.filter(id => !reqGalleryIds.includes(id));
      const toBeCreatedIds = reqGalleryIds.filter(id => !galleryIds.includes(id));

      await Promise.all([
        ...toBeDeletedIds.map(id => sequelize.models.Blog_gallery.destroy({ where: { BlogId: id, MediaId: id } })),
        ...toBeCreatedIds.map(id => sequelize.models.Blog_gallery.create({ BlogId: getBLog.id, MediaId: id }))
      ]);

      return res.status(200).send({ message: "blog updated successfully!", data: blog[1][0] });
    } else {
      return res.status(404).send(errorResponse({ message: "blog not found", details: "blog id seems to be invalid , please do check" }));
    }
  } catch (error) {
    console.log(error);
    return res.status(500).send(errorResponse({ status: 500, message: "some internal server error occured!" }));
  }
};

exports.delete = async (req, res) => {
  try {
    const sequelize = req.db;
    const { id } = req.params;
    const getBlog = await sequelize.models.Blog.findByPk(id);

    if (getBlog) {
      const blog = await sequelize.models.Blog.destroy({
        where: { id },
      });
      return res.status(200).send({ message: "blog deleted successfully!" });
    } else {
      return res.status(404).send(errorResponse({ message: "blog not found!", details: "blog id seems to be invalid" }));
    }
  } catch (error) {
    console.log(error);
    return res.status(500).send(errorResponse({ status: 500, message: "some internal server error occured!" }));
  }
};

exports.searchBlog = async (req, res) => {
  try {
    const sequelize = req.db;
    const { id } = req.params;
    const query = req.query;
    const qs = query.qs.trim();

    const pagination = await getPagination(query.pagination);
    const blogs = await sequelize.models.Blog.findAndCountAll({
      where: {
        [Op.or]: [
          { title: { [Op.iLike]: `%${qs}%` } },         // Search in 'name'
          { description: { [Op.iLike]: `%${qs}%` } },  // Search in 'description'
          { content: { [Op.iLike]: `%${qs}%` } },      // Search in 'content'
          { tags: { [Op.contains]: [qs] } },            // Search in 'tags' array
        ],
      },
      offset: pagination.offset,
      limit: pagination.limit,
    });

    const meta = await getMeta(pagination, blogs.count);
    return res.status(200).send({ data: blogs.rows, meta });
  } catch (error) {
    console.log(error);
    return res.status(500).send(errorResponse({ status: 500, message: "some internal server error occured!" }))
  }
};
