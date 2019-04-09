const express=require('express');
//引入bodyparser中间件
const bodyParser=require('body-parser');
//引入用户路由器
const userRouter=require('./routes/user.js');
//创建web服务器
var server=express();
server.listen(3000);
//托管静态资源到public
server.use(express.static('./public'));
//配置中间件
server.use(bodyParser.urlencoded({
    extended:false
}));
//把用户路由器挂载到/user下，访问形式/user/detail
server.use('/user',userRouter);
