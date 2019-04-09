
const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建空的路由器对象
var router=express.Router();
router.post('/reg',(req,res)=>{
    //获取post请求的数据
    var $obj=req.body;
    var $uname=obj.username;
    var $phone=obj.tel;
    var $upwd=obj.password;
    var sql='INSERT INTO dy_user SET ?';
    pool.query(sql,[$obj],(err,result)=>{
        if(err) throw err;
        //console.log(result);
        if(result.affectedRows>0){
          res.send({code:200,msg:'reg suc'});
        }
    })
})

/*
const express=require("express")
const router=express.Router();
const pool=require("../pool")
router.get("/",(req,res)=>{
  var sql=`select * from xz_index_product where seq_recommended!=0 order by seq_recommended`;
  pool.query(sql,[],(err,result)=>{
    if(err) console.log(err);
    res.send(result);
  });
})

module.exports=router;*/