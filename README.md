# Home Test API Automation

This repository contains an **API automation test suite** built using **Java** and **Karate Framework**.  

---

## 📌 Repository Location

GitHub Repo:  
https://github.com/PratikThoughts/home-test-api.git

---

## 🚀 Tech Stack

### Languages & Frameworks
- **Java (JDK 8+)**
- **Karate Framework**
- **Cucumber-style BDD**
- **JUnit 5**

### Build & Dependency Management
- **Maven**

---

## 📁 Project Structure
	
	KarateTest/
	├── .git
	├── src
	│ ├── test
	│ │ ├── java
	│ │ │ └── homeApiTest
	│ │ │			└── karatetest/
	│ │ │ └── karate-config.js
	│ │ │ ├── logback-test
	├── pom.xml
	├── target/
	├── README.md
	```



## 🧰 Prerequisites

Ensure you have the following installed:

1. **Java JDK 8 or above**
   ```
   java -version
   ```
2. **Java JDK 8 or above**
   	```
    mvn -version
    ```
    
## 📥 Clone the Repository
	
	git clone https://github.com/PratikThoughts/home-test-api.git
	cd C:\KarateTest\hometest
	
## 📦 Install Dependencies
	
	mvn clean install
	
## ▶️ Running Tests
1. Run all Karate tests
   ```
   mvn test
   ```
2. Run a specific feature file using specific test runner
   ```
   mvn test -Dtest=TestRunner_Inventory
   ```
   
## 📊 Test Reports
	
	target/karate-reports/
	target/surefire-reports/
	

