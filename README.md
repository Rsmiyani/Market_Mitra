# 🍴 Market Mitra

Market Mitra is a *dynamic food ordering and management platform* built using *PHP, MySQL, HTML, CSS, and JavaScript, hosted on **InfinityFree*.  
The platform allows users to *browse food items, add them to a cart, view nearby food zones via Google Maps, and place orders with integrated payment gateway support*.  

Live Website: [http://marketmitra.page.gd/](http://marketmitra.page.gd/)  

---

## 📖 Table of Contents
1. [Features](#-features)  
2. [Tech Stack](#-tech-stack)  
3. [Project Structure](#-project-structure)  
4. [Setup Instructions](#-setup-instructions)  
5. [Screenshots](#-screenshots)  
6. [License](#-license)  
7. [Acknowledgements](#-acknowledgements)  

---

## 🚀 Features

### *User Functionality*
- *Food Item Catalog* – Browse through a list of available food items with images, descriptions, and prices (fetched dynamically from the MySQL database).
- *Add to Cart* – Users can add multiple items to their shopping cart for easy checkout.
- *Payment Gateway Integration* – Secure payments supported via *Razorpay* (or other integrated gateways).
- *Google Maps API* – Displays *nearby food zones and outlets* for delivery or pickup.
- *Responsive Design* – Works seamlessly across mobile and desktop devices.

### *Admin Functionality*
- *Manage Food Items* – Add, update, and delete items directly via an admin interface.
- *Track Orders* – View incoming orders and update their status.
- *Database Management* – All operations are powered by *MySQL* and managed through *phpMyAdmin*.

---

## 🛠 Tech Stack

- *Frontend:* HTML5, CSS3, JavaScript  
- *Backend:* PHP 8+  
- *Database:* MySQL (InfinityFree hosted)  
- *Payment Gateway:* Razorpay API  
- *Maps & Location:* Google Maps JavaScript API  
- *Hosting:* InfinityFree (Free Hosting)  
- *Version Control:* Git

---

## 📂 Project Structure

MarketMitra/
├── assets/ # Images, CSS, and JavaScript files
├── config.php # Database configuration file
├── index.php # Homepage (lists food items dynamically)
├── cart.php # Shopping cart functionality
├── checkout.php # Payment gateway integration
├── map.php # Google Maps API integration for nearby food zones
├── admin/ # Admin panel for managing food items and orders
│ ├── add_item.php
│ ├── update_item.php
│ └── delete_item.php
├── styles.css # Global styles
├── README.md # Project documentation
└── (other PHP scripts) # Additional pages and utilities

---

## ⚙ Setup Instructions

Follow these steps to run Market Mitra locally or deploy it to a server.

### 1. Clone the Repository
```bash
git clone https://github.com/<your-username>/MarketMitra.git
cd MarketMitra
