var express = require('express');
var router = express.Router();

const bcrypt = require('bcryptjs');


//Connectin 객체 생성
var mysql = require('mysql');
const { route } = require('.');

// Connection 객체 생성 
var connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'root',   
  password: '111111',
  database: 'jspdb'  
});  

// Connect
connection.connect(function (err) {  
  if (err) {     
    console.error('mysql connection error');     
    console.error(err);     
    throw err;   
  } 
});

/* GET users listing. */
router.get('/', function(req, res) {
  connection.query('SELECT name, age, gender, height, weight, not_preference FROM users', function(err, rows){
    if(err) throw err;
    res.send(rows);
  });
});


router.post('/signUp', function(req, res){
  const user = {
    'userid' : req.body.user.userid,
    'name' : req.body.user.name,
    'gender' : req.body.user.gender,
    'age' : req.body.user.age,
    'height' : req.body.user.height,
    'weight' : req.body.user.weight,
    'not_preference' : req.body.user.not_preference,
  };
  connection.query('SELECT userid FROM users WHERE userid = "' + user.userid + '"', function (err, row) {
    if(row[0] == undefined){ //동일한 아이디가 있을 경우
      connection.query('INSERT INTO users (userid, name, gender, age, height, weight, not_preference) VALUES ("' + user.userid + '", "' +user.name+'", "' +user.gender+'", "' +user.age+'", "' +user.height+'", "' +user.weight+'", "' +user.not_preference+'")', user, function (err, row2) {
        if (err) throw err;
      });
      res.json({
        success: true,
        message: 'Name 등록 성공'
      })
    }
    else {
      connection.query('UPDATE users SET name = "'+user.name+'" where userid = "'+ user.userid +'" ', user, function (err, row2) {
        if (err) throw err;
      });
      res.json({
        success: false,
        message: 'NAME 수정 성공'
      })
    }
  });
});

router.post('/Modify1', function(req, res){
  const user = {
    'userid' : req.body.user.userid,
    'name' : req.body.user.name,
    'gender' : req.body.user.gender,
    'age' : req.body.user.age,
    'height' : req.body.user.height,
    'weight' : req.body.user.weight,
    'not_preference' : req.body.user.not_preference,
  };
  connection.query('SELECT userid FROM users WHERE userid = "' + user.userid + '"', function (err, row) {
  if(row[0] !== undefined){ //동일한 아이디가 없을 경우
    connection.query('UPDATE users SET gender = "'+user.gender+'" where userid = "'+ user.userid +'" ', user, function (err, row2) {
      if (err) throw err;
    });
    res.json({
      success: false,
      message: 'gender 수정 성공'
    })
  }
  });
});

router.post('/Modify2', function(req, res){
  const user = {
    'userid' : req.body.user.userid,
    'name' : req.body.user.name,
    'gender' : req.body.user.gender,
    'age' : req.body.user.age,
    'height' : req.body.user.height,
    'weight' : req.body.user.weight,
    'not_preference' : req.body.user.not_preference,
  };
  connection.query('SELECT userid FROM users WHERE userid = "' + user.userid + '"', function (err, row) {
  if(row[0] !== undefined){ //동일한 아이디가 있을 경우
    connection.query('UPDATE users SET age = "'+user.age+'" where userid = "'+ user.userid +'" ', user, function (err, row2) {
      if (err) throw err;
    });
    res.json({
      success: false,
      message: 'age 수정 성공'
    })
  }
  });
});

router.post('/Modify3', function(req, res){
  const user = {
    'userid' : req.body.user.userid,
    'name' : req.body.user.name,
    'gender' : req.body.user.gender,
    'age' : req.body.user.age,
    'height' : req.body.user.height,
    'weight' : req.body.user.weight,
    'not_preference' : req.body.user.not_preference,
  };
  connection.query('SELECT userid FROM users WHERE userid = "' + user.userid + '"', function (err, row) {
  if(row[0] !== undefined){ //동일한 아이디가 있을 경우
    connection.query('UPDATE users SET height = "'+user.height+'" where userid = "'+ user.userid +'" ', user, function (err, row2) {
      if (err) throw err;
    });
    res.json({
      success: false,
      message: 'height 수정 성공'
    })
  }
  });
});

router.post('/Modify4', function(req, res){
  const user = {
    'userid' : req.body.user.userid,
    'name' : req.body.user.name,
    'gender' : req.body.user.gender,
    'age' : req.body.user.age,
    'height' : req.body.user.height,
    'weight' : req.body.user.weight,
    'not_preference' : req.body.user.not_preference,
  };
  connection.query('SELECT userid FROM users WHERE userid = "' + user.userid + '"', function (err, row) {
  if(row[0] !== undefined){ //동일한 아이디가 있을 경우
    connection.query('UPDATE users SET weight = "'+user.weight+'" where userid = "'+ user.userid +'" ', user, function (err, row2) {
      if (err) throw err;
    });
    res.json({
      success: false,
      message: 'weight 수정 성공'
    })
  }
  });
});

router.post('/Modify5', function(req, res){
  const user = {
    'userid' : req.body.user.userid,
    'name' : req.body.user.name,
    'gender' : req.body.user.gender,
    'age' : req.body.user.age,
    'height' : req.body.user.height,
    'weight' : req.body.user.weight,
    'not_preference' : req.body.user.not_preference,
  };
  connection.query('SELECT userid FROM users WHERE userid = "' + user.userid + '"', function (err, row) {
  if(row[0] !== undefined){ //동일한 아이디가 있을 경우
    connection.query('UPDATE users SET not_preference = "'+user.not_preference+'" where userid = "'+ user.userid +'" ', user, function (err, row2) {
      if (err) throw err;
    });
    res.json({
      success: false,
      message: 'not_preference 수정 성공'
    })
  }
  });
});

module.exports = router ;