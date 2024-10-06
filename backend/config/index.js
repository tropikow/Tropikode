const path = require('path');
const dotenv = require('dotenv');

dotenv.config({ path: path.resolve(__dirname, '../.env') });

const config = {
  PORT : process.env.PORT,
};

module.exports = config;