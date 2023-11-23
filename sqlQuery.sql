CREATE TABLE Users (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
lastename VARCHAR(255) NOT NULL 
);

CREATE TABLE Orders (
id INT PRIMARY KEY AUTO_INCREMENT,
date DATE NOT NULL,
food_name VARCHAR(255) NOT NULL,
price DECIMAL(10, 2) NOT NULL,
hold_price DECIMAL(10, 2) NOT NULL,
user_id INT,
FOREIGN KEY (user_id) REFERENCES Users(id)
);

INSERT INTO Users (name, lastname) VALUES
  ('John', 'Doe'),
  ('Jane', 'Smith'),
  ('Bob', 'Johnson'),
  ('Alice', 'Williams'),
  ('Charlie', 'Brown'),
  ('Eva', 'Davis'),
  ('Frank', 'Miller'),
  ('Grace', 'Taylor'),
  ('Henry', 'Clark'),
  ('Ivy', 'Martin');

INSERT INTO Orders (date, food_name, price, hold_price, user_id) VALUES
	  ('2023-01-01', 'Pizza', 15.99, 5.00, 1),
      ('2023-01-01', 'Milk', 0.99, 5.00, 1),
      ('2023-01-01', 'Burger', 5.99, 5.00, 1),
      ('2023-01-01', 'Salat', 1.99, 5.00, 1),
      ('2023-01-01', 'Bread', 0.50, 5.00, 1),
	  ('2023-01-02', 'Burger', 9.99, 2.50, 2),
      ('2023-01-02', 'Bread', 1.99, 2.50, 2),
      ('2023-01-02', 'Juice', 0.99, 2.50, 2),
      ('2023-01-02', 'Steak', 9.99, 2.50, 2),
      ('2023-01-02', 'Salad', 0.99, 2.50, 2),
	  ('2023-01-03', 'Pasta', 12.50, 3.00, 3),
      ('2023-01-03', 'Bread', 1.50, 3.00, 3),
      ('2023-01-03', 'Milk', 0.50, 3.00, 3),
      ('2023-01-03', 'Steak', 12.50, 3.00, 3),
	  ('2023-01-04', 'Sushi', 20.99, 5.50, 4),
      ('2023-01-04', 'Bread', 0.99, 5.50, 4),
      ('2023-01-04', 'Juice', 0.99, 5.50, 4),
      ('2023-01-04', 'Steak', 20.99, 5.50, 4),
	  ('2023-01-05', 'Salad', 8.99, 1.50, 5),
	  ('2023-01-06', 'Steak', 24.99, 6.00, 6),
	  ('2023-01-07', 'Chicken Wings', 14.50, 4.00, 7),
	  ('2023-01-08', 'Tacos', 10.99, 2.00, 8),
	  ('2023-01-09', 'Soup', 7.99, 1.00, 9),
	  ('2023-01-10', 'Sandwich', 6.50, 1.50, 10);
  
UPDATE orders
  
SET `date` = DATE_FORMAT(`date`, '%d-%m-%Y');

SELECT DATE_FORMAT(date, '%d-%m-%Y') AS formatted_date, food_name, price, hold_price, user_id FROM Orders;


DELETE FROM orders;