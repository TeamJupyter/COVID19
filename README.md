# Predicting Pneumonia
## COVID-19 Patients and Pneumonia Risks based on Multiple Health Factors

#### Group Members
- Nathania Rockwood
- Shazia Nooruddin

## Project Overview
**Objective**
- Given the current state of the nation, we hope to answer the question whether or not patients that enter hospitals can get pneumonia based on: when they entered the hospital, when they started feeling their symptoms, age, sex, and a few other variables.
- We plan to use a supervised machine learning model to determine the likelihood of patients catching pneumonia.
- We would want to answer the following questions:
  - "How likely is it that patients will get pneumonia if they visit a hospital after a certain time since they started feeling their symptoms?"
  - "If patients go to the hospital sooner, are they less likely to catch pneumonia in the hospitals?"
  - "Are patients that are in contact with other COVID-19 carriers more prone to pneumonia?"
  - "Is the probability of catching pneumonia higher when you are younger or when you are older?"
  - "Does the use of tobacco increase your chances of getting pneumonia?"
  - "If you have any other health concern, like asthma, cardiovascular problems, or obesity, increase your risk of getting pneumonia?"

**Data Source**
- The data we have is from a Kaggle dataset called "COVID-19 patient pre-condition dataset," by which data was taken from data sources from the Mexican government. The data contains a huge number of anonymised patient-related information that include the patient's age, sex, any other respiratory diseases they had, and many more health factors.
- This dataset include over 500,000 data points.
- This Kaggle datasource can be found [here](https://www.kaggle.com/tanmoyx/covid19-patient-precondition-dataset?select=covid.csv).

**Database**
- Our data is uploaded to a database in pgAdmin, where we used SQL to import data
- We have connected that database to our Jupyter Notebook file using SQL Alchemy

**Presentation & Dashboard**
- The link to the presentation is [here](https://github.com/TeamJupyter/COVID19/blob/master/Segment%203%20-%20Presentation%20Draft.pptx).
- The link to the interactive dashboard is [here](https://public.tableau.com/profile/nathania.rockwood#!/vizhome/COVID-19FinalProjectDashboard/Dashboard2?publish=yes).

**Exploratory Data Analysis**
- First, we assessed all the labels described by the dataset on Kaggle. We replaced all unknown objects with NaN instead of the code they were given.
- Next, we made our primary key for each patient the index instead of the given id so that the values would be numeric.
- We dropped the columns id, date_died, and pregnancy because we did not find that information relevant to answering our question.
- We also dropped all rows with NaN objects.
- We changed the data types for entry_date and date_symptoms to data frame so that we could subtract the values and have one column representing the difference between them. We named this new column entry_date_minus_date_symptoms and converted it to days with the data type integer so that it could be used in our modeling.
- We filtered for days greater than 0 for data cleanup purposes. 
- We moved the pneumonia column to the end so it would be easier to write out ranges excluding pneumonia since it is our dependent variable.
- We checked the value counts and ensured those with and without pneumonia were balanced.

**Supervised Models**
- The following supervised machine learning models were used through sklearn to analyze this dataset:
  - Logistic Regression
  - Decision Tree Classifier
  - K Nearest Neighbor Classifier
  - Linear Discriminant Analysis
  - Gaussian Naive Bayes
- The independent variables for these models were all columns excluding the index and pneumonia. The depedent variable was pneumonia.
- Below are the cross validation scores with their respective standard deviations for each model:
  - Logistic Regression: 0.7146 (0.06)
  - Decision Tree Classifier: 0.642150 (0.05)
  - K Nearest Neighbor Classifier: 0.6809 (0.05)
  - Linear Discriminant Analysis: 0.7138 (0.06)
  - Gaussian Naive Bayes: 0.5973 (0.03)
  
**Unsupervised Model**
- When plotting different variables against each other, we noticed that because most variables are binary and since they had even distributions among variables, the plots did not have clear clusters from which to analyze. Even after fitting for the most accurate number of clusters using an elbow plot, applying it to a K-Means model still did not show clear results.

**PCA**
- First, we standardized objects in the dataframe using StandardScalar. 
- Then, we initialized the PCA model using the transformed data.
- We added more prinicpal components until the sum of the explained variance ratio equaled above 50%.
- We calculated the inertia for a range of K values and found the appropriate number using the elbow curve.
- We initialized the K-means model, fit the model, predicted the number of clusters, and plotted principal components against each other.
- We then used sklearn's train_test_split function on the data with all columns except pneumonia for x and pneumonia for y. 
- We transformed the training and testing groups with PCA and analyzed them with logistic regression.
- The accuracy score turned out to be 0.6946, which is less than that of the supervised machine learning logistic regression model.

**Final Analysis**
- The ROC curve (receiver operating characteristic curve) is a graph showing the performance of the classification model at all classification thresholds with two parameters, the True Positive Rate and the False Positive Rate. AUC stands for "Area under the ROC Curve" and measures the entire two-dimensional area underneath the entire ROC curve, which, in this case, is 0.59. 0.59 is the probability that the supervised machine learning logistic regression model ranks a random positive example more highly than a random negative example.
- Based on the classification report, the precision for prediction of no pneumonia and pneumonia are slightly misaligned with each other. 
- However, the recall (sensitivity) for predicting pneumonia is much lower than it is for predicting an absence of pneumonia. 
- The lower recall for pneumonia is reflected in the dropped F1 score as well. 
- Recall for those with pneumonia is low, which is indicative of a large number of false negatives. 
- However, the accuracy score is relatively high, with a score of 0.72. 

In summary, this supervised logistic regression model is reasonable at classifying patients with and without pneumonia because the model’s accuracy, 0.72, is relatively high compared to other models analyzed.


