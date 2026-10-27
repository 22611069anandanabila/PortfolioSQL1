# E-Commerce Sales & Customer Behavior Analysis (Public Dataset: TheLook Ecommerce Dataset)
The e-commerce industry generates millions of transactions every day, so companies require data analysis to understand sales performance, customer behavior, and the effectiveness of the products being sold.

**Tools Used:** Google BigQuery (SQL) and GitHub
**Dataset:** `bigquery-public-data.thelook_ecommerce`  

---

## Business Questions
1. What are the sales trends over time?
2. Which products and categories contribute the most to revenue?
3. What is the customer behavior (repeat vs one-time buyers)?
4. Which regions perform the best?
5. What business recommendations can be provided?

---

## 🔍 Data Preparation & Cleaning
A long ago before conducting the analysis, the key columns in the `orders`, `order_items`, `products`, and `users` tables were checked for missing values ​​(`NULL`). None of the critical columns contained any `NULL` values ​​(the data is clean and ready for use).

---

## 📈 Analysis & Findings

### 1. Monthly Sales Trend
* **Insight:** Sales experienced a rapid increase from 2019 ($104.13/month) to a peak at the end of 2022 ($22,816.79/month).

![Monthly Sales Trend Output](assets/01_sales_trend.png)

---

### 2. Kategori Produk Kontributor Revenue Terbesar
* **Insight:** Kategori **Outerwear & Coats** menjadi penyumbang *revenue* terbesar (**12.5%**), disusul oleh **Jeans** (**11.31%**).

![Top Categories Output](assets/02_top_categories.png)

---

### 3. Perilaku Pelanggan (Customer Behavior)
* **Insight:** **88.06%** pelanggan hanya berbelanja 1 kali (*One-time buyers*), sedangkan *Repeat Customers* hanya **11.94%**.

![Customer Retention Output](assets/03_customer_retention.png)

---

### 4. Performa Penjualan Berdasarkan Wilayah
* **Insight:** **China** mendominasi total *revenue* global dengan **33.47%**, disusul **United States** (**22.31%**) dan **Brasil** (**14.7%**).

![Regional Revenue Output](assets/04_regional_performance.png)

---

## 💡 Business Recommendations
1. **Fokus pada Retention:** Karena 88% pembeli hanya belanja sekali, buat program loyalitas atau email pemasaran voucher diskon untuk pembelian kedua.
2. **Bundling Product:** Gabungkan kategori harga tinggi (*Outerwear & Coats*) dengan kategori volume tinggi (*Jeans/Intimates*).
3. **Geo-Targeting Marketing:** Alokasikan budget iklan terbesar ke China dan US sebagai *core market*.
