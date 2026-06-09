-- Database initialization script for kontorutleie-selskapet
-- This script defines the schema for customer storage, network setup, and technical logs.

CREATE TABLE IF NOT EXISTS customers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL UNIQUE,
    username VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS network_setup (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES customers(id) ON DELETE CASCADE,
    subnet_address VARCHAR(50) NOT NULL,
    gateway_ip VARCHAR(50) NOT NULL,
    dhcp_start VARCHAR(50) NOT NULL,
    dhcp_end VARCHAR(50) NOT NULL,
    dns_primary VARCHAR(50),
    dns_secondary VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS system_logs (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id) ON DELETE SET NULL,
    action VARCHAR(255) NOT NULL,
    description TEXT,
    log_type VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_customers_username ON customers(username);
CREATE INDEX IF NOT EXISTS idx_network_setup_customer_id ON network_setup(customer_id);
CREATE INDEX IF NOT EXISTS idx_system_logs_customer_id ON system_logs(customer_id);
