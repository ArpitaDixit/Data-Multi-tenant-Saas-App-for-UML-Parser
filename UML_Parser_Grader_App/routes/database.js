var ejs = require('ejs');
var mysql = require('mysql');

function getConnection() {
    var connection = mysql.createConnection({
        host : 'tenant.ckyup8aquzun.us-west-2.rds.amazonaws.com',
        user : 'tenant',
        password : 'tenant123',
        database : 'tenant',
        port : 9001
    });
    return connection;
}

function fetchData(callback, sqlQuery) {

    console.log("\nQuery:" + sqlQuery);

    var connection = getConnection();

    connection.query(sqlQuery, function(err, rows, fields) {
        if (err) {
            console.log("ERROR: " + err.message);
        } else { 
            console.log("DB Results:" + rows);
            callback(err, rows);
        }
    });
    console.log("\nConnection closed...");
    connection.end();
}

exports.fetchData = fetchData;  