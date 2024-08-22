const express = require("express");
const app = express();
const PORT = 3000;

app.get('/',(req,res)=>{
  console.log('inicio')
  res.status(200).send('Holass mundo')
})

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
