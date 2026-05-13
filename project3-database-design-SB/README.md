# Relational Database Design — Starbird Coffee Ordering System

A relational database designed for a chicken fast food restaurant ordering system, inspired by a well-known brand, built as an academic team project.

## Tools
Lucidchart (ERD) · MySQL Workbench · MySQL

## Database Structure
7 tables: Customer, Employee, Menu_Item, Orders, Order_Line, Prepared_by, Payment

## Key Design Features
- Entity-Relationship Diagram (ERD) with cardinality notation
- Logical schema with primary and foreign key constraints
- Referential integrity behaviors (CASCADE, SET NULL, RESTRICT)
- Enforced 1:1 relationship between Orders and Payment

## Files
- `build_tables.sql` — creates all tables with constraints
- `load_data.sql` — inserts sample data
- `sample_queries.sql` — validates schema with test queries
