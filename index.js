const express = require('express');
const app = express();
const path = require('path');
const dotenv = require('dotenv');

const envFile = process.env === 'production' ? '.env' : '.env.dev';
dotenv.config({path: envFile})

const PORT = process.env.PORT || 3000;

if(process.env.NODE_ENV === 'production'){
  app.listen(PORT,()=>{
    console.log(`Server is running on PORT ${PORT} and in ${process.env.NODE_ENV} mode`);
  })
} else {
  app.listen(PORT,()=>{
    console.log(`Server is running on PORT ${PORT} and in ${process.env.NODE_ENV} mode`);
  })
}