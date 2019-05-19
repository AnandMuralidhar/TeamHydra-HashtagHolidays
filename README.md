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

### Diagrams
Architecture
![alt text](https://github.com/AnandMuralidhar/TeamHydra-HashtagHolidays/blob/master/TravelEasyProject/images/ArchitectureDiagram.png)

Code Pipeline
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


#### AWS Resources:

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
