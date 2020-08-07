# Predicting Pneumonia
## COVID-19 Patients and Pneumonia Risks based on Multiple Health Factors

#### Group Members
- Nathania Rockwood
- Shazia Nooruddin

#### Communication Protocols
- As a team of two, our means of communication is through Slack.
- We also have set up a Google Drive for us to edit our presentations and take notes during meetings with TAs and Instructors
- We also have weekly check in meetings with each other to keep track of progress per week and per assignment.

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

**Presentation**
- The link to the presentation is [here](https://docs.google.com/presentation/d/1KHt8QmYePNy9SOjz3oqtWnLoiJhlV-bDcjrLjKONqHI/edit?usp=sharing).
