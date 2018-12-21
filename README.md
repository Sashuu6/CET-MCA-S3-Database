# CET-MCA-S3-Database
The SQL programs developed during database lab.

1. Client_master
Description : Used to store client information
Client_master (Client_no First letter must start with ‘C’, Name Not null, Address1, Address2,
City, Pincode, State, Bal_due)
2. Product_master
Description : Used to store product information
Product_master(Product_no First letter must start with ‘P’, Description Not null, Profit_percent, Unit_measure, Qty_on_hand, Reorder_lvl, Sell_price, Cost_price)
3. Salesman_master
Description : Used to store salesman working for the company
Salesman_master(Salesman_no First letter must start with ‘S’ , Salesman_name Not null, Address1 Not null, City, Pincode, State, Sal_amt Not null cannot be zero , Tgt_to_get Not null cannot be zero, Ttd_sales Not null, Remarks)
4. Sales_order
Description : Used to store client’s orders
Sales_order(Order_no First letter must start with ‘O’,Order_date,Client_no Foreign key references client_no of client_master,Dely_addr,Salesman_no,Dely_type Deliver:part(P)/full(F) Default ‘F’, Billed_yn, Dely_date,Order_status Values(‘in process’, ‘fulfilled’, ‘backorder’, ‘cancelled’)
5. Sales_order_details
Description : Used to store client’s orders with details of each product ordered Sales_order_details(Order_no Reference Order_no of the sales_order table, product_no Foreign key references Product_no of the product_master table,Qty_ordered,Qty_number, Product_rate)

# Cycle-1

1. Creation and Alteration of tables
2. Insertion of values into the tables
3. Computation of table data
4. Date manipulation
5. Having and Group by clauses
6. Subqueries
7. Views in SQL

# Cycle-2

1. Write a pl/sql block to display the fibanocci series of a given number.
2. Write a pl/sql block to find the largest of three numbers.
3. Write a pl/sql block to find the sum of n odd numbers.
4. Write a pl/sql block to find the factorial of a number.
5. Write a pl/sql block to reverse a string.
6. Write a pl/sql block to find the reverse of a number.
7. Write a pl/sql block which will accept product_no from user and subtract an amount of 200 from
cost_price if the cost_price has a minimum of Rs.3000 after the subtraction the process is to be performed on product_master table.(use exception to handle standard error conditions.)
8. List the contents of Product_master table.
9. List the contents of the table sales_order for the particular salesman_no.(Use parameterized cursor).
10. List the details of the client in the state of maharashtra.

# Cycle-3

1. Write a procedure to describe the names of all clients having the specified character as the ith letter in the names. From the main program read the values for character and i.
2. Write a function to find sum total of all billed orders for a specific month. The month name is accepted from the main program and the result is also displayed in the main program.
3. Write a procedure to find the maximum and minimum product price. Display this value in the main program.
4. Write a function to count the number of orders and display that value in the main program.
5. Create a trigger on Product_master table which allows the updation when profit percent value given now is greater than the earlier value else it should give error message.
6. Create a trigger to control the insertion operation on the Product_master table. Insertion is possible if profit percent of the current entry is greater than the maximum profit percent of the values available else it should give an error message.