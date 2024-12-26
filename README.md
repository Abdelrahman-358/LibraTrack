# Library Management System  

A robust library management system designed to streamline the borrowing and returning of books, manage member and admin accounts, and maintain accurate records of books and loans. Built using Java for the frontend and SQL Server as the backend, this project is perfect for managing libraries of varying sizes.  

---

## Features  

### For Members  
- **Book Borrowing**: Borrow books using just the title and your member ID.  
- **Book Returning**: Return books with automatic fine calculation for overdue returns.  

### For Admins  
- **Manage Books**: Add, update, or remove books from the system.  
- **Manage Members**: Register new members and view their borrowing history.  
- **Overdue Tracking**: Identify overdue books and fines for efficient management.  
- **Audit Trail**: Track all borrowing and returning activities.  

### Additional Features  
- **Dynamic Fine Calculation**: Automatically calculates fines for overdue returns based on days late.  
- **Role-Based System**: Separate interfaces and functionalities for members and admins.  
- **Search and Filter**: Easily search for books by title, category, or author.  

---

## Technologies Used  

- **Frontend**: Java Swing  
- **Backend**: SQL Server 2022  
- **Database Connection**: JDBC (Java Database Connectivity)  
- **Development Environment**: NetBeans IDE  

---

## Database Schema  

### Tables  
1. **Members**: Stores member information, linked to `Admins` through `ManagerID`.  
2. **Admins**: Stores administrator credentials and details.  
3. **Books**: Stores information about books, including title, author, category, and availability.  
4. **Loans**: Tracks book loans, including issue date, due date, return date, and fines.  
### Project Output
![ERDiagram](https://github.com/user-attachments/assets/b44cc6c1-4058-49ca-b728-e6462d37786f)
![MAPPING](https://github.com/user-attachments/assets/af639feb-9742-4804-a03e-6434c3dee666)
![LOGIN PAGE](https://github.com/user-attachments/assets/9d144243-bae8-4fa3-9a88-ad44bb127763)
![ADMIN DASHBOARD](https://github.com/user-attachments/assets/230fa665-33ae-4ec3-9d83-062bb11caf21)
![USER DASHBOARD](https://github.com/user-attachments/assets/4a4d771c-86fa-4ed2-98c4-aece98605138)


### Relationships  
- **Admins to Members**: One-to-many relationship, where each member is assigned to a manager (admin).  
- **Books to Loans**: One-to-many relationship, as a book can have multiple loans.  
- **Members to Loans**: One-to-many relationship, as a member can borrow multiple books.  

---

## How to Run the Project  

1. **Clone the Repository**:  
   ```bash
   git clone https://github.com/yourusername/library-management-system.git
