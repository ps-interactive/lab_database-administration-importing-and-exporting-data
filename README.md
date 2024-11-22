# Database Administration: Importing and Exporting Data

This repository provides resources and practical examples for learning database import and export operations. It is designed for entry-level database administrators (DBAs) with basic SQL knowledge.

## Repository Structure

### 1. `csv/`
Contains sample CSV files representing typical e-commerce data:
- **`customers.csv`**: Customer details.
- **`order_items.csv`**: Items in customer orders.
- **`orders.csv`**: Order details.
- **`payments.csv`**: Payment information.
- **`products.csv`**: Product catalog.

### 2. `csv_sample_exports/`
Includes sample exports in different formats:
- **`customers.sql`**: SQL file of exported customer data.
- **`customers.txt`**: Text file version of customer data.

### 3. `sql_scripts/`
SQL scripts for database operations:
- **`data_load.sql`**: Loads data into the database from source files.
- **`dataset_ecommerce.sql`**: Creates the schema and data for an e-commerce database.
- **`export_ecommerce_db_2024-11-09.sql`**: Example of a database export.
- **`recreate_empty_tables.sql`**: Recreates the database schema without data.
- **`sqldump_import_from_csv.sql`**: Script for importing CSV data into the database.

## Usage Instructions

1. **Prepare Your Environment**:
   - Ensure you have a compatible database management system (e.g., MySQL, PostgreSQL).
   - Install tools for handling CSV and SQL files.

2. **Importing Data**:
   - Use the SQL scripts in `sql_scripts/` to set up your database.
   - Load CSV data into the database using `data_load.sql` or `sqldump_import_from_csv.sql`.

3. **Exporting Data**:
   - Refer to `export_ecommerce_db_2024-11-09.sql` as an example for exporting data from your database.
   - Experiment with generating exports in various formats (e.g., `.sql`, `.txt`).

4. **Practice**:
   - Modify the SQL scripts and CSV files to fit different use cases.
   - Simulate real-world database operations.

## Who is this for?
This repository is ideal for:
- Entry-level DBAs learning the fundamentals of data importing/exporting.
- Developers working with relational databases.
- Educators teaching database administration basics.

---

Feel free to explore, experiment, and contribute!
