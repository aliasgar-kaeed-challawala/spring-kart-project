PPT Link : https://docs.google.com/presentation/d/1n8FNs8Tk7O-YYZyMx9Z-Jw6VYy68RL6zcd8bbm_y_So/edit?usp=sharing
Video link : https://fluvid.com/videos/detail/RZE4jhv3enFMXazoQ



To run the application on your device, please follow the below instructions,

1. Open MySQL command line client and create a database named "major"
2. Run the Spring kart application
3. In the MySQL command line, execute the following queries:
    ->INSERT INTO roles (id, name) VALUES (1, 'ROLE_ADMIN'),(2, 'ROLE_USER');
    ->INSERT INTO user VALUES(1,"No 212 Baker Street, Anna Nagar-600040","adminspringkart@gmail.com","$2a$10$zhC//AdMDVov947e27hlx.9t7Uj0HpeEW7ODVINDVackP5cK7yrnW","9192939495","Admin");
    ->insert into user_role(user_id, role_id) values (1,1),(1,2);
    
  The above queries will register yourself as an admin.
  
  For registering yourself as a user go to the login page and register yourself by providing the required details.
  
  To add dummy products into the database, execute the following queries in MySql command line
  
  ->INSERT INTO PRODUCTS VALUES("1","Apple","Mobile","Apple iPhone 13 (512GB) - Pink","https://m.media-amazon.com/images/I/61l9ppRIiqL._SL1500_.jpg",109900.00,"iPhone 13",25);
  
  other products you can add from admin dashboard.
  
  Admin login username : Admin
  password : 12345
 To go to the admin dashboard,
 enter the following URL:
 http://localhost:8080/admin/list
