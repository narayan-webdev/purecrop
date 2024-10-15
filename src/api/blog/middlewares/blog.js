// Middleware for category
// Customize the middleware code here

/**
 *
 * @param {import("express").Request} req
 * @param {import("express").Response} res
 */

// write code below

const Joi = require("joi");
const { errorResponse } = require("../../../services/errorResponse");

module.exports = {
  async validateCreateRequest(req, res, next) {
    function validate(body) {
      const JoiSchema = Joi.object({
        title: Joi.string().required(),
        description: Joi.string().required(),
        content: Joi.string().required(),
        ThumbnailId: Joi.number().optional(),
        tags: Joi.array().items(Joi.string()).optional(),
        gallery: Joi.array().items(Joi.number()).optional(),
      });
      return JoiSchema.validate(body);
    }

    let result = validate(req.body);
    if (result.error) {
      return res.status(400).send(
        errorResponse({
          message: result.error.message,
          details: result.error.details,
        })
      );
    } else {
      await next();
    }
  },

  async validateUpdateRequest(req, res, next) {
    function validate(body) {
      const JoiSchema = Joi.object({
        title: Joi.string().required(),
        description: Joi.string().required(),
        content: Joi.string().required(),
        slug: Joi.string().required(),
        ThumbnailId: Joi.number().optional(),
        tags: Joi.array().items(Joi.string()).optional(),
        gallery: Joi.array().items(Joi.number()).optional(),
      });
      return JoiSchema.validate(body);
    }

    let result = validate(req.body);
    if (result.error) {
      return res.status(400).send(
        errorResponse({
          message: result.error.message,
          details: result.error.details,
        })
      );
    } else {
      await next();
    }
  },
};
