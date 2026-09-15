# 🛺 Rapido Rides Analytics Dashboard

<div align="center">

![Rapido Banner](https://img.shields.io/badge/Rapido-Rides%20Analytics-FFD700?style=for-the-badge&logo=react&logoColor=black)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Python](https://img.shields.io/badge/Python-Data%20Analysis-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Data%20Source-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)

**An end-to-end Data Analytics project analyzing 10,000+ Rapido rides to uncover booking patterns, revenue trends, and cancellation insights.**

[📊 Dashboard](#-dashboard-preview) • [📁 Dataset](#-dataset-overview) • [🔍 Insights](#-key-insights) • [🛠️ Tools](#️-tools--technologies)

</div>

---

## 📌 Project Overview

The **Rapido Rides Analytics Dashboard** is a comprehensive data analysis project built to explore ride-booking behavior for one of India's largest bike-taxi and auto-rickshaw platforms. Using **10,000 ride records**, this project uncovers:

- 📈 Revenue and booking trends across **months, days, and hours**
- 🚗 Performance of different **vehicle types** (Auto, Bike, eBike, Go Sedan, etc.)
- ❌ **Cancellation patterns** by customers and drivers with reasons
- ⭐ **Customer and Driver ratings** across ride categories

This project simulates a real-world business intelligence workflow — from **raw CSV data → cleaning → analysis → interactive dashboard**.

---

## 📊 Dashboard Preview

The dashboard is divided into **3 analytical pages**:

### 🟡 Page 1: Ride Performance Overview
> Total Bookings, Revenue, Avg Ratings, Booking Status, Vehicle Type Performance, and Hourly Booking Trends.

### 🟠 Page 2: Booking Trends Analysis
> Month-wise bookings, Status distribution, and Vehicle-wise completed vs cancelled rides.

### 🔴 Page 3: Cancellation Deep Dive
> Customer vs Driver cancellations, Day-wise & Hour-wise cancellation trends, and Cancellation reasons.

---

## 📁 Dataset Overview

**File:** `rapido_rides.csv`

| Column | Description |
|--------|-------------|
| `Date`, `Time`, `DateTime` | Timestamp of booking |
| `Booking ID` | Unique ride identifier |
| `Booking Status` | Completed / Cancelled / Incomplete / No Driver Found |
| `Customer ID` | Unique customer identifier |
| `Vehicle Type` | Auto, Bike, eBike, Go Sedan, Go Mini, Premier Sedan, Uber XL |
| `Pickup / Drop Location` | Route details |
| `Avg VTAT / Avg CTAT` | Avg. time to arrive / trip completion time |
| `Cancelled Rides by Customer/Driver` | Cancellation flags |
| `Reason for cancelling` | Cancellation reasons |
| `Booking Value` | Revenue per ride (₹) |
| `Ride Distance` | Distance in km |
| `Driver / Customer Rating` | Ratings (1–5) |
| `Payment Method` | UPI, Cash, Card, Wallet, etc. |

**Total Records:** 10,000+ bookings

---

## 🔍 Key Insights

### 💰 Revenue & Bookings
- **Total Revenue:** ₹ 78.75 Lakhs from 10,000+ bookings
- **Peak Booking Hour:** **10 AM** — Office/working hours drive maximum demand
- **Lowest Booking Month:** **February** — Fewest days in the month
- **Highest Revenue Months:** **October & November** — Festive season surge

### 🚗 Vehicle Type Trends
- **Auto** is the **most booked vehicle** (~3,400 rides) — cheap, easy, and ideal for short distances
- **Premier Sedan & Uber XL** generate **higher revenue per ride** but fewer bookings
- **eBike** rides are growing in short-distance segments

### ❌ Cancellation Analysis
- **~9.5%** of rides cancelled by **customers**
- **~8.5%** of rides cancelled by **drivers**
- **Top Customer Reason:** *"Driver is not moving towards pickup location"*
- **Top Driver Reason:** *"Customer related issue"* / *"More than permitted people"*
- **Peak Cancellation Hour:** **10 AM** — High volume = high chance of failure
- **Peak Cancellation Day:** **Tuesday** | **Lowest:** **Saturday**

### ⭐ Ratings
- **Average Customer Rating:** 4.3 ⭐
- **Average Driver Rating:** 4.3 ⭐

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Microsoft Excel / CSV** | Raw data source |
| **Python (Pandas, NumPy)** | Data cleaning & preprocessing |
| **Power BI** | Interactive dashboard & visualizations |
| **DAX** | Calculated measures & KPIs |
| **GitHub** | Version control & project hosting |

---

## 🚀 How to Use

1. **Clone the repository**
   ```bash
   git clone https://github.com/kumaravinashdbg/Rapido_Rides_Analytics_Dashboard.git
   ```

2. **Open the dataset**
   Navigate to `rapido_rides.csv` to view the raw data.

3. **Explore the Dashboard**
   Open the `.pbix` file (or view the screenshot) in **Power BI Desktop** to interact with filters and slicers.

4. **Read the Analysis**
   Check the presentation script in the repo for a full walkthrough of each dashboard page.

---

## 📈 Business Recommendations

Based on the analysis, here are actionable recommendations:

| Issue | Recommendation |
|-------|----------------|
| High 10 AM cancellations | Increase driver incentives during peak hours |
| "Driver not moving" cancellations | Improve live tracking & ETA accuracy |
| Low February bookings | Run targeted promotional campaigns |
| Auto dominance | Introduce loyalty rewards for Auto users |
| Driver cancellations | Investigate "Customer related issue" feedback loop |

---

## 📸 Screenshots


> - ![image alt](https://github.com/kumaravinashdbg/Rapido_Rides_Analytics_Dashboard/blob/39ae3d79d77f4544f835c4a58a9dbb3a88615f90/Screenshot%202026-09-15%20133313.png)
> - ![image alt](https://github.com/kumaravinashdbg/Rapido_Rides_Analytics_Dashboard/blob/39ae3d79d77f4544f835c4a58a9dbb3a88615f90/Screenshot%202026-09-15%20133350.png)
> - ![image alt](https://github.com/kumaravinashdbg/Rapido_Rides_Analytics_Dashboard/blob/39ae3d79d77f4544f835c4a58a9dbb3a88615f90/Screenshot%202026-09-15%20133412.png)

---

## 🤝 Contributing

Contributions are welcome! If you'd like to improve the dashboard or add new insights:

1. Fork the project
2. Create a feature branch (`git checkout -b feature/NewInsight`)
3. Commit your changes (`git commit -m 'Add new insight'`)
4. Push to the branch (`git push origin feature/NewInsight`)
5. Open a Pull Request

---

## 👨‍💻 Author

**Avinash Kumar**
🔗 [GitHub Profile](https://github.com/kumaravinashdbg)

---

## ⭐ Show Your Support

If you found this project helpful, please give it a **⭐ star** on GitHub! It motivates me to build more data analytics projects.

---

<div align="center">

**Made with ❤️ using Power BI & Python**

*"Data is the new oil — but analytics is the combustion engine."* 🚀

</div>
