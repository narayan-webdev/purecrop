// Middleware for product
// Customize the middleware code here

/**
 *
 * @param {import("express").Request} req
 * @param {import("express").Response} res
 */

// write code below

const { Op, literal } = require("sequelize");
const Joi = require("joi");
const { errorResponse } = require("../../../services/errorResponse");
const jwt = require("../../../services/jwt");
const dbCache = require("../../../utils/dbCache");
const { getDate } = require("../../../services/date");

module.exports = {
  async validateCreateBody(req, res, next) {
    const body = req.body;
    const JoiSchema = Joi.object({
      name: Joi.string().required(),
      description: Joi.string().required(),
      ThumbnailId: Joi.number().required(),
      CategoryId: Joi.number().required(),
      SubCategoryId: Joi.number().optional(),
      rating: Joi.number().positive().optional().max(5),
      variants: Joi.array().items(
        Joi.object({
          name: Joi.string().required(),
          price: Joi.number().required(),
          strike_price: Joi.number().required(),
          quantity: Joi.number().required(),
          ThumbnailId: Joi.number(),
          gallery: Joi.array().items(Joi.number()).allow(null),
          bulk_pricing: Joi.array().items(Joi.object({
            from: Joi.number().required(),
            to: Joi.number().required(),
            price: Joi.number().required(),
            premiumPrice: Joi.number().optional()
          })).optional().allow(null)
        })
      )
        .required()
        .min(1),
      tags: Joi.array().items(Joi.string()).optional(),
      gallery: Joi.array().items(Joi.number()).allow(),
      shipping_value: Joi.number().optional(),
      shipping_value_type: Joi.string().valid("SHIPPING_PRICE", "SHIPPING_PERCENTAGE", "FREE_SHIPPING"),
      CollectionId: Joi.number().optional(),
      CollectionStaticId: Joi.number().optional(),
      yt_video_link: Joi.string().optional(),
      is_active: Joi.boolean().optional(),
      cod_enabled: Joi.boolean().optional(),
      product_return: Joi.boolean().optional(),
      enquiry_enabled: Joi.boolean().optional(),
      show_price: Joi.boolean().optional(),
      reviews: Joi.array().items(Joi.object({
        name: Joi.string().required(),
        title: Joi.string().optional().allow(null),
        AvatarId: Joi.number().optional().allow(null, ""),
        rating: Joi.number().optional().max(5),
        review: Joi.string().optional().required(),
      })).optional(),
      comission_value: Joi.number().optional(),
      discount_value: Joi.number().optional(),
    });

    let result = JoiSchema.validate(body);
    if (result.error) {
      return res.status(400).send(errorResponse({ message: result.error.message, details: result.error.details }));
    } else {
      next(); // Corrected the square brackets to curly braces
    }
  },
  async validateUpdateBody(req, res, next) {
    const body = req.body;
    const JoiSchema = Joi.object({
      name: Joi.string().optional(),
      description: Joi.string().optional(),
      ThumbnailId: Joi.number().optional(),
      CategoryId: Joi.number().optional(),
      SubCategoryId: Joi.number().optional(),
      gallery: Joi.array().items(Joi.number()).allow(null),
      shipping_value: Joi.number().optional(),
      shipping_value_type: Joi.string().valid("SHIPPING_PRICE", "SHIPPING_PERCENTAGE", "FREE_SHIPPING"),
      CollectionId: Joi.number().optional(),
      CollectionStaticId: Joi.number().optional(),
      rating: Joi.number().positive().optional().max(5),
      yt_video_link: Joi.string().optional().allow(""),
      is_active: Joi.boolean().optional(),
      cod_enabled: Joi.boolean().optional(),
      product_return: Joi.boolean().optional(),
      enquiry_enabled: Joi.boolean().optional(),
      show_price: Joi.boolean().optional(),
      comission_value: Joi.number().optional(),
      discount_value: Joi.number().optional(),
    });

    let result = JoiSchema.validate(req.body);

    if (result.error) {
      return res.status(400).send(errorResponse({ status: 400, message: result.error.message, details: result.error.details }));
    } else {
      await next(); // Corrected the square brackets to curly braces
    }
  },

  async filterValidator(req, res, next) {
    try {
      const query = req.query;
      const body = req.body;
      const JoiSchema = Joi.object({
        pagination: Joi.object().optional(),
        price: Joi.object({
          min: Joi.number().positive().required(),
          max: Joi.number().positive().required(),
        }).required(),
      });
      let result = JoiSchema.validate(query);
      if (result.error) return res.status(400).send(errorResponse({ message: result.error.message, details: result.error.details }));
      next();
    } catch (error) {
      console.log(error);
      return res.status(500).send(error);
    }
  },
  async validateSubscription(req, res, next) {
    try {
      const token = jwt.verify(req);
      const mainDb = dbCache.get("main_instance");
      const sequelize = req.db;
      const body = req.body;
      const user = await mainDb.models.User.findByPk(token.id, {
        include: {
          model: mainDb.models.Subscription,
          as: "subscriptions",
          where: {
            valid_to: {
              [Op.gt]: getDate(),
            },
            is_paid: true,
          },
          include: "plan",
        },
      });
      const products = await sequelize.models.Product.count();
      if (user.subscriptions.length < 1) {
        return res.status(400).send(errorResponse({ message: "You do not have any active subscription plan" }));
      }
      if (products < user.subscriptions[0].plan.product_count) {
        await next();
      } else {
        return res
          .status(400)
          .send(
            errorResponse({
              message: `You have riched your products limit , your current plan's product limit is ${user.subscriptions[0].plan.product_count} `,
            })
          );
      }
      await next();
    } catch (error) {
      console.log(error);
      return res.status(500).send(error);
    }
  },

  async importFromShopify(req, res, next) {
    try {
      const body = req.body;
      const JoiSchema = Joi.object({
        api_key: Joi.string().required(),
        api_secret: Joi.string().required(),
        access_token: Joi.string().required(),
        domain: Joi.string().required()
      });
      let result = JoiSchema.validate(body);
      if (result.error) return res.status(400).send(errorResponse({ message: result.error.message, details: result.error.details }));
      next();
    } catch (error) {
      console.log(error);
      return res.status(500).send(error);
    }
  },
};
