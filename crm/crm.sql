-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES

DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS activity;

CREATE TABLE salesperson (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name TEXT,
    last_name TEXT, 
    email TEXT
);

CREATE TABLE company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT, 
    last_name TEXT, 
    company_id TEXT,
    email TEXT, 
    phone TEXT,
    title TEXT
);

CREATE TABLE activity (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT, 
    created at TEXT, 
    customer_id INTEGER,
    salesperson_id INTEGER,
    notes TEXT
);
