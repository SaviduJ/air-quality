# --- Air Quality Modelling from CSV ---

# 1. Read the CSV file
air_data <- read.csv("yourfile.csv")

# 2. View first few rows
head(air_data)

# 3. Plot NO2 over time
plot(air_data$Day, air_data$NO2, type = "o", col = "red",
     xlab = "Day", ylab = "NO2 Concentration (µg/m³)",
     main = "NO2 levels over time")

# 4. Simple regression model: predict NO2 using O2 and CO
model <- lm(NO2 ~ O2 + CO, data = air_data)
summary(model)

# 5. Predict NO2 for a new observation
new_data <- data.frame(O2 = 20.85, CO = 0.82)
predicted_NO2 <- predict(model, new_data)
predicted_NO2
