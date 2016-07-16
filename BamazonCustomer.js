var mysql = require('mysql');
var prompt = require('prompt');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'Bamazon'
})

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
});

var displayProducts = function(callback) {
    connection.query("SELECT * FROM Products", function(err, rows) {
        if (err) {
            return callback(err);
        }
        for (i = 0; i < rows.length; i++) {
            var itemID = rows[i].ItemID;
            var productName = rows[i].ProductName;
            var departmentName = rows[i].DepartmentName;
            var price = rows[i].Price;
            var quantity = rows[i].StockQuantity;
            console.log("\n" + "Item ID: " + itemID);
            console.log("Product Name: " + productName);
            console.log("Department: " + departmentName);
            console.log("Price: $" + price);
            console.log("Quantity: " + quantity);
          //   if (process.argv[2] == "buy"){
          //   console.log("\nWhat is the Item ID of the product you would like to buy?")
          // }
        }
    })
}


displayProducts();

