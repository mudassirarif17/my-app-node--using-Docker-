const express = require("express");

const app = express();

 app.get('/' , (req , res)=>{
    res.json({message : "Hello from Docker"})
 })

 app.listen(3000 , ()=>{
    console.log("Server Running at Port 3000")
}) 



