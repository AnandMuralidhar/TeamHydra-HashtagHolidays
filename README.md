# Hashtag Holidays

## Introduction
 
### CMPE282 Project - Team Hydra
University Name: http://www.sjsu.edu/  

Professor: Andrew Bond

Students:

[Anand Muralidhara](https://www.linkedin.com/in/anandmuralidhara/)

[Chaitrali Deshmukh](https://www.linkedin.com/in/chaitrali-deshmukh-8610a9176/)

[Prathyusha Kasibhatta](https://www.linkedin.com/in/prathyusha-kasibhatta-5b39ab169/)

[Saylee Vyawahare](https://www.linkedin.com/in/saylee-vyawahare-51b59188/)

### Demo
[Demo video Link](https://drive.google.com/file/d/1JEtr1ttb80hXJNsh9uOLkt8gQaM8Uyde/view?usp=sharing)

### Problem Statement

Numerous travelers intend to travel places all around the world all through the year. Arranging your movement is a noteworthy work. When the traveler chooses the place of his interest, he should check separately with each travel website for schedule and the financial plan. This becomes a hectic process. Because of which the he will end up visiting many websites. In the event that more travel plans are accessible under a single platform, it will make it easier for travel agencies to post their plan and get updates.  

### Proposed Solution
Wouldn't it be less demanding on the off chance that someone arranged your excursion? And all you should do is pack and leave. To get this going the  user and travel organization should enroll with our platform. We are utilizing AWS cloud services for creating and facilitating a 3-Tier Web Application called Travel Easy. It has role based login for organizations and explorers. The travel organizations transfer their agenda subsequent to being a substantial client. The explorers can enlist with the web application to see the sightseeing designs which is coordinated for them by AWS Lex chatbot, taking explorer's necessities to design a plan for the place.

### Features for implementation
1.	Single Sign-On with role based authentication.
2.	New user can register himself/herself using Sign up form. This metadata will get stored in RDS for future purposes.
3.	User will be validated through Login page by verifying username and password from the RDS.
4.	A role-based login to redirect users based on their roles i.e. Admin, Travelers, Travel Agencies.
5.	We are implementing Chatbot using Lex to collect user data and provide them best suitable travel plans.
6.	User Interaction is improved by interacting with Amazon Lex chatbot and Polly.
7.	Travel Companies can upload images for every plan and these are displayed on users travel plan page. CloudFront caches these images and displays them to user in very less time.
8.	Serverless Lambda is used to take the input from user and match them with existing travel plans in the database.
9.	Photos and reviews for the availed plans can be uploaded by the users and are stored in S3 buckets.
10.	Machine learning is used to analyze traveler’s reviews and suggests travel companies to upload best travel plans that traveler’s would like more. 
11.	Machine learning is used to analyze the traveler’s data and suggest users the best time to visit the place they are interested in. 

### Diagrams
#### Architecture
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/ArchitectureDiagram.png)

#### Code Pipeline
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/CICD.jpg)

### Application Screenshots

Okta Sign In:
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/Okta_login.png)

User Dashboard:
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/user_dashboard.png)

Lex chatbot:
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/lex_chat.png)

Travel plans:
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/Plans_list.png)

Social share:
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/social_share.png)

Company Dashboard:
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/Company_dashboard.png)

Machine Learning prediction:
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/Prediction.png)

### AWS Screenshots

#### S3 Configuration, LifeCycle Policy and Replication
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/S31.png)

![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/S32.png)

![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/S3Lifecycle.png)

![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/S3Replication.png)

#### Cloud Formation
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/CF1.jpg)

![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/CF2.png)

#### CodePipeline Setup
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/CICD_Stages.png)

#### ElasticBeanstalk Configuration
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/EBSConfiguration.png)

#### Jenkins Build Output
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/JenkinsBuildOutput.png)

![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/JenkinsBuildOutput.png)

### AWS Resources:

1.	EC2, AutoScale Group
2.	Elastic Beanstalk
3.	Route 53
4.	S3, S3-IA, Glacier (Lifecycle + Replication)
5.	CloudFront
6.	Elastic Load Balancer
7.	AWS Code Pipeline
8.	API gateway
9.	Amazon Machine Learning 
10.	DynamoDB 
11.	RDS
12.	Lambda 
13.	Lex
14.	Polly
15.	Cloudwatch
16.	CloudTrail 
17.	SNS
18.	IAM
19. Cloud Formation
20. Cognito

### Deployment Instructions on Local
1.	Prerequisite Software: Java8 Runtime, Maven, Eclipse.
2.	Clone or download source.
3.	Import as maven project in Eclipse
4.	applications.properties should be changed with your keys and URLs.
5.	For social logins update the developer account URL. 
6.	Change credentials for machine learning and lex in code.
7.	Run the instructions mvn clean and maven update project.
8.	Then run application as spring boot app.
9.	Application will be accessible for you  at http://localhost:8080/
