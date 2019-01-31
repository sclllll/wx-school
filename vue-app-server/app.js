//1:加载模块 express pool
const express = require("express");
const pool = require("./pool");
//2:创建express对象
var app = express();
//2.1:加载跨域访问组件
const cors = require("cors");
//2.2:配置允许脚手架访问程序
app.use(cors({
    origin:["http://127.0.0.1:3001",
    "http://localhost:3001"],
    credentials:true
}));
//7.1:node.js app.js
//   加载第三方模块 express-session
const session = require("express-session")
//7.2:对模块配置   
app.use(session({
  secret:"128位随机字符",    //安全字符串
  resave:false,             //请求保存
  saveUninitialized:true,   //初始化保存
  cookie:{
    maxAge:1000 * 60 * 60 * 24 
  }
}));


//3:指定监听端口3000
app.listen(3000);
//4:指定静态目录 public
// __dirname 当前程序所属目录绝对路径 
//app.js vue_app_server
app.use(express.static(__dirname+"/public"))

app.get("/homegroup",(req,res)=>{
  var sql="SELECT * FROM wx_home";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/prifile",(req,res)=>{
  var pid=req.query.pid;
  var sql="SELECT * FROM wx_prifile";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/introduction",(req,res)=>{
  var sql="SELECT * FROM wx_intr";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/newsone",(req,res)=>{
  var sql="SELECT * FROM wx_news1";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/newstwo",(req,res)=>{
  var sql="SELECT * FROM wx_news2";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/group",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){pno=1}
  if(!pageSize){pageSize=6}
  var reg=/^[0-9]{1,3}$/
  if(!reg.test(pno)){
    res.send({code:-1,msg:"页编格式不正确"});
    return;
  }
  if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
  }
  var progress=0;
  var obj={code:1};
  var sql="SELECT count(gid) AS c FROM wx_group";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    var pageCount=Math.ceil(result[0].c/pageSize);
    progress+=50;
    obj.pageCount=pageCount;
    if(progress==100){
      res.send(obj);
    }
  });
  var sql="SELECT * FROM wx_group LIMIT ?,?";
  var offset=parseInt((pno-1)*pageSize);
      pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    progress+=50;
    obj.data=result;
    if(progress==100){
      res.send(obj);
    }
  })
})

app.get("/info",(req,res)=>{
  var fid=req.query.fid;
  var sql="SELECT * FROM wx_info WHERE fid=?";
  pool.query(sql,[fid],(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})

app.get("/login",(req,res)=>{
  var username=req.query.username;
  var userpwd=req.query.userpwd;
  var userphone=req.query.userphone;
  var sql="SELECT count(lid) AS c FROM wx_login WHERE username=? AND userpwd=? AND userphone=?";
  pool.query(sql,[username,userpwd,userphone],(err,result)=>{
    if(err)throw err;
    var obj=result[0].c;
        if(obj==1){          
            res.send({code:1,msg:'登陆成功'})
        }else{
            res.send({code:-1,msg:'用户名或密码错误！'})
        }
  })
})