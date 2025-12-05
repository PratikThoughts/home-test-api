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
	│ │ │			└── inventory/
							└── common/ 
									└── CreateInventory.feature 	# Reusable feature for common POST request logic 
							└── data/						# Test data files (JSON payloads, inputs, etc.)
							└── AddItem.feature				# Tests adding new items to the inventory
							└── GetInventory.feature		# Tests fetching the list of inventory items
							└── ValidateItems.feature		# Tests validates inventory items
							└── InventoryRunner.java		# Karate JUnit runner for executing inventory tests
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
	Create folder with 'KarateTest' this name in C drive
	Clone repo using below command
	```
	git clone https://github.com/PratikThoughts/home-test-api.git
	```
	From 'homeApiTest' path execute the tets cases.
	
## 📦 Install Dependencies
	
	mvn clean install
	
## ▶️ Running Tests
1. Run all Karate tests
   ```
   mvn test
   ```
2. Run a specific feature file using specific test runner
   ```
   mvn test -Dtest=InventoryRunner
   ```
   
## 📊 Test Reports
	
	target/karate-reports/
	target/surefire-reports/
	

