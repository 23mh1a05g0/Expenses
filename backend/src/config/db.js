const mongoose = require("mongoose");

const connect_db = async ()=>{
    await mongoose.connect("mongodb://localhost:27017/Expenses");

    console.log(`Mongoose is connected to : ${mongoose.connection.name}`);
}

module.exports = connect_db;