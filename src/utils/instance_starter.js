const dbCache = require("./dbCache");
const { Sequelize } = require("sequelize");
const dbConfig = require("../../config/db.config");
// const mainDbRelation = require("./mainDbRelation");
const apiGenerator = require("./apiGenerator");
const relation = require("./relation");
// const dataInserter = require("./dataInserter");
module.exports = async () => {
  //console.log("Intializing Server🚀");
  if (dbCache.get("common_commerce") === undefined) {
    const db = {};
    const sequelize = new Sequelize(dbConfig)
    db.sequelize = await relation(sequelize)
    console.log("Setting Up Configuration📤");
    dbCache.set("common_commerce", db.sequelize);
    await db.sequelize.sync({ alter: true });
    await apiGenerator(db.sequelize);
    console.log("Server Started!💻");
    console.log(`╔═════════════════════════════════════════╗\n║ Server Running On http://localhost:4568 ║\n╚═════════════════════════════════════════╝`);
  } else {
    //console.log("already db main db cached!");
  }
};
