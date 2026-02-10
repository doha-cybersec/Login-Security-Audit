# Login Security Audit System (Oracle SQL – Command Line)

## Project Overview
This project demonstrates how to store and analyze login attempts using Oracle SQL command line to detect potential security threats, such as brute-force attacks or suspicious IP addresses. It is designed for beginners and uses **only SQL commands**, no GUI or additional software required.

---

## Features
- Stores login attempts (success/failure) in an Oracle database
- Detects brute-force login attempts
- Identifies suspicious IP addresses targeting multiple accounts
- Fully implemented using command-line SQL

---

## Database Structure
**Table:** `login_logs`  
Columns:
- `id` → Unique ID for each login attempt  
- `username` → Name of the account attempting to log in  
- `ip_address` → IP address of the login attempt  
- `login_time` → Timestamp of the login attempt  
- `success` → 0 = failed login, 1 = successful login  

---

## How to Run
1. Open Oracle SQL command line (SQL*Plus or similar).  
2. Connect to your database.  
3. Run `create_tables.sql` to create the table:  
```sql
@database/create_tables.sql

