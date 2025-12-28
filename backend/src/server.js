require("dotenv").config();
const app = require("./app");
const connect_db = require("./config/db");

const PORT = process.env.PORT || 5000;

connect_db().then(() => {
  app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
  });
});
