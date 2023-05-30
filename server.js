const express = require("express");
const path = require("path");
let app = express();
const port = 3000;
// app.use(express.static(path.join(__dirname,'views')))
app.get('/',(req,res)=>{
  res.sendFile(__dirname + '/views/index.html')
})
app.listen(port, () => {
  console.log(`Express is running on port ${port}`);
});