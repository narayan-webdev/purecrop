function calculateDiscountedPrice(price, discountType, discountValue) {
    if (discountType === "FLAT") {
        return price - discountValue;
    } else if (discountType === "PERCENTAGE") {
        return price - (price * discountValue) / 100;
    }
}
/**
 * 
 * @param {import("sequelize").Sequelize} sequelize 
 * @param {*} variantsPrice 
 * @param {*} variants 
 */
module.exports = async (sequelize, variantsPrice, variants) => {
    let totalAmount = 0;
    for (const item of variants) {
        console.log(item)
        if (item.coupon_code && item.coupon_code != "") {
            const affiliateUser = await sequelize.models.Store_user.findOne({ where: { affiliate_code: item.coupon_code } })
            // const coupon = await sequelize.models.Coupon.findOne({ where: { coupon_code: item.coupon_code } })
            if (affiliateUser) {
                // //console.log(coupon)
                // const discountedPrice = calculateDiscountedPrice(
                //     variantsPrice[item.VariantId],
                //     coupon.discount_type,
                //     coupon.discount_value
                // );
                const variant = await sequelize.models.Variant.findByPk(item.VariantId, { include: ["product"] })
                // const commission_value = variant.product.comission_value
                const discount_value = variant.product.discount_value
                const discountedPrice = variantsPrice[item.VariantId] - (variantsPrice[item.VariantId] * discount_value) / 100
                // const cAmount = (variantsPrice[item.VariantId] * commission_value) / 100
                console.log(discountedPrice, "dd")
                //  affiliateUser.increment({ wallet_balance: cAmount })
                variantsPrice[item.VariantId] = discountedPrice;
                totalAmount = totalAmount + discountedPrice;
            }
        }
        else {
            variantsPrice[item.VariantId] = variantsPrice[item.VariantId];
            totalAmount = totalAmount + variantsPrice[item.VariantId];
        }
    }

    return { totalAmount, variantsPrice };
};
