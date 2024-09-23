const Joi = require("joi");
const { errorResponse } = require("../../../services/errorResponse");

exports.validateCreateCollection = (req, res, next) => {
  const schema = Joi.object({
    name: Joi.string().required(),
    ThumbnailId: Joi.number().positive().required(),
    products: Joi.array().items(Joi.number()).optional(),
  });

  const { error } = schema.validate(req.body);
  if (error) {
    return res.status(400).send(errorResponse({ message: error.message, details: error.details }));
  }

  next();
};

exports.validateUpdateCollection = (req, res, next) => {
  //console.log("Entered validation collection update");

  const schema = Joi.object({
    name: Joi.string().optional(),
    ThumbnailId: Joi.number().positive().optional(),
    products: Joi.array().items(Joi.number()).optional(),
  });
  const { error } = schema.validate(req.body);
  if (error) {
    return res.status(400).send(errorResponse({ message: error.message, details: error.details }));
  }

  next();
};
