data <- read.csv("healthcare_costs_rounded-1.csv")

str(data)
summary(data)

#checking for missing values:
sum(is.na(data))

#data visualization:
#histograms for continous variables:
#Histogram: Age
ggplot(data, aes(x = Age)) + geom_histogram(binwidth = 5, fill = "steelblue", color = "black") + theme_minimal()

#Histogram: BMI
ggplot(data, aes(x = BMI)) + geom_histogram(binwidth = 2, fill = "orange", color = "black") + theme_minimal()

#Histogram: Number of Visits
ggplot(data, aes(x = Number_of_Visits)) + geom_histogram(binwidth = 1, fill = "purple", color = "black") + theme_minimal()

#Histogram: Healthcare Cost
ggplot(data, aes(x = Healthcare_Cost)) + geom_histogram(binwidth = 300, fill = "darkgreen", color = "black") + theme_minimal()

#barplots for categorical variables:
#Bar plot: Chronic Conditions
ggplot(data, aes(x = factor(Chronic_Conditions))) + 
  geom_bar(fill = "salmon") + 
  labs(x = "Chronic Conditions", y = "Count") + theme_minimal()

#Bar plot: Smoking Status
ggplot(data, aes(x = factor(Smoking_Status))) + 
  geom_bar(fill = "skyblue") + 
  labs(x = "Smoking Status", y = "Count") + theme_minimal()

#Fitting the multiple regression model
model <- lm(Healthcare_Cost ~ Age + BMI + Smoking_Status + Number_of_Visits + Chronic_Conditions, data = data)

#summary of the model
summary(model)

#refining the model:# Refined model without BMI and Smoking_Status
refined_model <- lm(Healthcare_Cost ~ Age + Number_of_Visits + Chronic_Conditions, data = data)

#summary
summary(refined_model)

# Diagnostics for the refined model
par(mfrow = c(2, 2))
plot(refined_model)


