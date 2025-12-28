const app = require("./app");
const connect_db = require("./config/db");

const PORT = 5000;

connect_db()
  .then(() => {
    app.listen(PORT, () => {
      console.log(`Server running at http://localhost:${PORT}`);
    });
  })
  .catch((err) => {
    console.error("DB connection failed", err);
  });
