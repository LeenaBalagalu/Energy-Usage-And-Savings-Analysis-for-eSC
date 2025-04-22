⚡ Energy Usage & Savings Project
📌 Tools Used: R, Python, Shiny, ggplot2, caret, Random Forest, SVM, Multiple Linear Regression
📁 Dataset: eSC Energy Usage Data (Building Characteristics, Energy Consumption, Weather Data)
📈 Goal: Predict energy usage patterns and propose strategies to reduce peak energy demand, particularly during the summer months.

📊 Project Overview
This project focuses on analyzing and forecasting energy consumption patterns to help optimize energy usage and reduce peak energy demand. We used multiple predictive modeling techniques and a Shiny app to explore how different factors impact energy consumption, especially during the peak month of July.

We performed the following tasks:

Data cleaning: Addressed missing values, negative entries, and other data issues.

Data transformation: Aggregated energy consumption data for household categories (e.g., kitchen, laundry, HVAC).

Feature engineering: Used weather data, building characteristics, and energy consumption for prediction models.

Model training: Applied Multiple Linear Regression (MLR), Support Vector Machine (SVM), and Random Forest (RF) models to predict energy consumption for July.

Model performance comparison: Evaluated models using performance metrics such as R-squared, RMSE, and MSE.

🧠 Key Features Engineered
Building Characteristics: Data on building size, insulation, and climate zone.

Energy Consumption Categories: Aggregated consumption for kitchen, heating, cooling, water heating, and appliances.

Weather Data: Temperature, humidity, and other factors affecting energy demand.

Monthly Aggregation: Energy consumption aggregated by month for seasonal trends.

🤖 Models Evaluated

Model	Accuracy	R-squared	Notes
Multiple Linear Regression	89.4%	0.89	Best performance in predicting overall energy usage
Support Vector Machine (SVM)	82.3%	0.85	Good for handling non-linear relationships
Random Forest	85.6%	0.87	Handles complexity with minimal overfitting
📊 Results Summary
Best Model: The Multiple Linear Regression (MLR) model explained 89.4% of the variability in energy consumption, making it the most accurate for this application.

SVM & Random Forest: Both models performed well, but MLR was preferred due to its simplicity and better prediction accuracy.

Shiny App: The Shiny app allows users to explore how various factors (e.g., temperature, building size) affect energy usage and visualize the impact of these variables over time.

📌 Key Takeaways
Predictive Modeling: MLR was the best model for forecasting energy consumption, but SVM and Random Forest also offered valuable insights.

Feature Engineering: Aggregating energy usage data by categories (kitchen, laundry, etc.) and incorporating weather data improved model accuracy.

Shiny App: Interactive dashboards provided stakeholders (e.g., CEOs) with insights into how changes in building features and weather conditions affect energy consumption.

Energy Management: The project highlights the importance of understanding seasonal and daily energy usage patterns to effectively manage energy demand, especially during peak times like July.
