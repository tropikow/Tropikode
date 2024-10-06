const express = require('express');
const app = express();
const config = require('./config/index');

const PORT = config.PORT || 3000;

if(process.env.NODE_ENV === 'production'){
  app.listen(PORT,()=>{
    console.log(`Server is running on PORT ${PORT} and in ${process.env.NODE_ENV} mode`);
  })
} else {
  app.listen(PORT,()=>{
    console.log(`Server is running on PORT ${PORT} and in ${process.env.NODE_ENV} mode`);
  })
}