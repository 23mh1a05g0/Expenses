const express = require("express");
const authRoutes = require("./routes/authRoutes");

const app = express();

app.use(express.json());
app.use("/api/auth",authRoutes);


app.get("/home", (req, res) => {
  res.send("Welcome to Spend Smart");
});



module.exports = app;
