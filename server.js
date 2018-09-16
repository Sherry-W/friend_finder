// load the things we need
var express = require('express');
var app = express();
var mysql = require('mysql');

// method override
var methodOverride = require('method-override');
app.use(methodOverride('_method'));

//you need this to be able to process information sent to a POST route
	var bodyParser = require('body-parser');
	var jsonParser = bodyParser.json();

	// parse application/x-www-form-urlencoded
	app.use(bodyParser.urlencoded({ extended: true }));

	// parse application/json
	app.use(bodyParser.json());

// set the view engine to ejs
	app.set('view engine', 'ejs');

// Initializes the connection variable to sync with a MySQL database
var connection = mysql.createConnection({
	host: "127.0.0.1",
  
	// Your port; if not 3306
	port: 3306,
  
	// Your username
	user: "root",
  
	// Your password
	password: "password",
	database: "friendfinder_db"
});

// homepage
app.get('/friendfinder', function(req, res) {
    res.render('pages/friendfinder');
});

// survey
// app.get('/friendfinder/survey', function(req, res) {
//     res.render('pages/survey');
// });

app.get('/friendfinder/survey', function(req, res){
    connection.query('SELECT * FROM questions',function (error, results, fields) {
        var ques = results;
        connection.query('SELECT * FROM choices', function (err, resp, fie) {
            res.render('pages/survey', {
                data: resp,
                dat: ques
            });
        });
    });
});


app.post('/userinfo', function(req, res){
	console.log(req.body);

	connection.query('INSERT INTO users (username, email, gender, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', [req.body.username, req.body.email,req.body.gender, req.body.q1, req.body.q2, req.body.q3, req.body.q4, req.body.q5, req.body.q6, req.body.q7, req.body.q8, req.body.q9, req.body.q10], function(err, response) {	
			res.redirect('/friendfinder/api');
	  }
	);
})

// app.post('/userinfo', function (req, res) {
// 	// if (!req.body) return res.sendStatus(400)
// 	console.log(req.body);
//   })


// api --- to be updated
app.get('/friendfinder/api', function(req, res) {
	connection.query("SELECT users.id AS id, username, email, gender, CONCAT_WS(', ', q1, q2, q3, q4, q5, q6, q7, q8, q9, q10) AS answers FROM users", function (err, resp, fie) {
		res.send(resp);
	});
});


app.listen(3000, function(){
	console.log('listening on 3000');
});