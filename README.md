# 🐍 Python → MySQL ETL Pipeline

## 🎯 Project Overview
This project builds an end-to-end ETL (Extract, Transform, Load) pipeline for an e-commerce company.  
It automates the collection, transformation, and storage of city-level data — including population, weather, airport, and flight information — from web scraping and external APIs into a MySQL relational database.  
The result is a unified dataset ready for data analysis and business intelligence dashboards.

---

## 📊 Dataset & Sources

- **Wikipedia** – City name, country, and population data (web-scraped)  
- **OpenWeather API** – Temperature, humidity, and forecast data  
- **Aerobox API** – Airport and flight movement information  
- **Size** – Data for several major European cities  
- **Notes** – Coordinates converted from DMS to decimal; all datasets linked by `city_id` foreign keys; the exacct API keys are hidden

---

## 🚀 Key Findings & Results

- Designed a **normalized SQL schema** connecting 4 independent data sources  
- Successfully **automated data ingestion** from APIs into MySQL via Python  
- Verified data integrity and relational joins across all tables  
- Delivered a scalable foundation for analytical dashboards (population trends, flight routes, and weather comparisons)  

---

## 🛠️ Technologies Used

- **Programming:** Python  
- **Libraries:** pandas, requests, BeautifulSoup  
- **Database:** MySQL  
- **Environment:** Jupyter Notebook  

---

## 📁 Project Structure

python-mysql-etl-pipeline/

├── FINAL_GANS_STUDY.ipynb # Main Jupyter notebook (Python + SQL integration)

├── wiki_cities_full.sql # Full SQL schema (all CREATE TABLE statements)

└── README.md # Project documentation

📧 Contact

Author: Svitlana Sheina
Email: lana.sheina93@gmail.com
LinkedIn: https://www.linkedin.com/in/svitlana-sheina/
GitHub: https://github.com/Svitlana-Sheina
