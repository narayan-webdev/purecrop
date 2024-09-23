const { DataTypes } = require("sequelize");

module.exports = (sequelize) => {
  // Define the Post model using the provided Sequelize instance
  const Order_status_tracker = sequelize.define("Order_status_tracker", {
    status: {
      type: DataTypes.ENUM(
        "NEW",
        "ACCEPTED",
        "DECLINED",
        "PROCESSING",
        "INTRANSIT",
        "OUT_FOR_DELIVERY",
        "DELIVERED",
        "CANCELLED",
        "COMPLETED",
        "PAYOUT_DONE",
        "RTO",
        "RETURN_REQUEST",
        "RETURN_ACCEPTED",
        "RETURN_DECLINED",
        "RETURN_RECEIVED",
        "RETURN_PENDING"
      ),
    },
  });

  // Define associations or additional methods as needed

  return Order_status_tracker;
};
