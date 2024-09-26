// src/api/post/postRoutes.js
const router = require("express").Router();
const RBAC = require("../../../middlewares/RBAC");
const StoreRBAC = require("../../../middlewares/StoreRBAC");
const queryValidator = require("../../../middlewares/queryValidator");
const blog = require("../controllers/blog");
const { validateCreateRequest, validateUpdateRequest, } = require("../middlewares/blog");

// Define routes for the "Post" resource


const permissions = [
  {
    api: "blog",
    endpoint: "/api/blogs",
    method: "POST",
    handler: "Create blog",
  },
  {
    api: "blog",
    endpoint: "/api/blogs",
    method: "GET",
    handler: "List blogs",
  },
  {
    api: "blog",
    endpoint: "/api/blogs/:id",
    method: "GET",
    handler: "List Single blog",
  },
  {
    api: "blog",
    endpoint: "/api/blogs/:id",
    method: "PUT",
    handler: "Update blog",
  },
  {
    api: "blog",
    endpoint: "/api/blogs/:id",
    method: "DELETE",
    handler: "Delete blog",
  },
  {
    api: "blog",
    endpoint: "/api/blogs/:id/products",
    method: "GET",
    handler: "List Category's products",
  },
  {
    api: "blog",
    endpoint: "/api/blogs/:id/products/search",
    method: "GET",
    handler: "Search Category's products",
  },
];

module.exports = (app) => {
  router.post("/", [validateCreateRequest], blog.create);
  router.get("/search", blog.searchBlog);
  router.get("/", blog.find);
  router.get("/:id", blog.findOne);
  router.put("/:id", [validateUpdateRequest], blog.update);
  router.delete("/:id", [], blog.delete);
  app.use("/api/blogs", router);
};
module.exports.permissions = permissions