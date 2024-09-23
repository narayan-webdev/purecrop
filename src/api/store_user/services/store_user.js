exports.isPremiumUser = async ({ id, sequelize }) => {
  try {
    const user = await sequelize.models.Store_user.findByPk(id, {
      include: ["role",
        {
          model: sequelize.models.Store_subscription,
          as: "subscriptions",
          include: ["plan"],
        },],
    })
    const subscriptions = user.subscriptions;
    if (subscriptions.length > 0) {
      const recentSub = subscriptions.reduce((acc, curr) => {
        return curr.id > acc.id ? curr : acc;
      });
      //console.log(recentSub)
      if (new Date(recentSub.valid_to) > new Date()) {
        return true
      } else {
        return false
      }
    } else {
      return false
    }
  } catch (error) {
    //console.log(error)
    return { error }
  }
}