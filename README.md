# 🛒 E-Commerce Database Design Project

Welcome to our E-Commerce Database Project! This repository contains the full Entity-Relationship Diagram (ERD) and SQL schema for building a robust, scalable, and normalized e-commerce database system. 🚀

## 📚 Project Overview

This project is a team-based challenge aimed at helping us master the art of **database design** and collaboration. We designed and built a database tailored for a modern e-commerce platform with product variations, attributes, and categorized metadata.

---

## 🎯 Objectives

- ✅ Design a comprehensive **Entity-Relationship Diagram (ERD)**
- ✅ Implement the database schema using **MySQL**
- ✅ Promote team collaboration using **GitHub**
- ✅ Apply best practices in **data normalization** and **modular design**

---

## 🧱 ERD Structure

Our e-commerce system supports products with multiple attributes such as size, color, brand, and categories. It allows for detailed variations and stock tracking.

### 🗃️ Key Tables

| Table Name            | Description                                      |
|-----------------------|--------------------------------------------------|
| `product`             | General product information                      |
| `product_item`        | Specific purchasable variation (SKU, stock)      |
| `product_image`       | Stores images for each product item              |
| `color`               | Available color options                          |
| `product_category`    | Classifies products (e.g., clothing, tech)       |
| `brand`               | Manufacturer or supplier of the product          |
| `product_variation`   | Links product to variation (color + size)        |
| `size_category`       | Groups of size (e.g., clothing, shoes)           |
| `size_option`         | Specific size (e.g., S, M, 42)                   |
| `product_attribute`   | Custom attributes like material, weight, etc.    |
| `attribute_category`  | Groups attributes (e.g., physical, technical)    |
| `attribute_type`      | Type of data (text, number, boolean)             |

---

## 📥 Installation & Usage

To run this database locally:

1. **Clone this repository**  
   ```bash
   git clone https://github.com/yourusername/ecommerce-database-design.git
   cd ecommerce-database-design

