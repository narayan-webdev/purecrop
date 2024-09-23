const { DataTypes } = require("sequelize");

module.exports = (sequelize) => {
  const Activity_log = sequelize.define("Activity_log", {
    description: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    event: {
      type: DataTypes.ENUM(
        "ADMIN_LOG_IN",
        "RESELLER_LOG_IN",
        "USER_LOG_IN",
        "STAFF_LOG_IN",
        "ORDER_PLACED",
        "ORDER_ACCEPTED",
        "ORDER_DECLINED",
        "ORDER_SHIPPED",
        "ORDER_DELIVERED",
        "SUBSCRIPTION_ADDED",
        "NEW_CAMPAIGN_ADDED",
        "NEW_PRODUCT_ADDED",
        "NEW_COLLECTION_ADDED",
        "NEW_TUTORIAL_ADDED",
        "NEW_LEAD_ADDED",
        "NEW_GROUP_ADDED",
        "LEAD_COMPLETED",
        "LEAD_CALLED",
        "LEAD_CALLING",
        "LEAD_CONVERTED",
        "RESELLER_WITHDRAW",
        "RESELLER_PAYOUT",
        "WALLET_DEBIT",
        "WALLET_CREDIT"
      ),
      allowNull: false,
    },
  });

  return Activity_log;
};
