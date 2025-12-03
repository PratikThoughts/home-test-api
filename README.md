# Project Title

Take Home API Test.

## Description

This repository contains the automation test suite developed for the App Automation Test assignment.

## Getting Started

### Tech Stack

* Playwright
* Typescript

### Supported Browsers

* Chrome
* Firefox
* Edge
* WebKit (Playwright)

### Installation
* Node installation
	* Check node version using below command,  If it is not installed then download installer file from official file and install it.
  ```
	node -v
  ```
 	*  Check node version again to check node successfully installed or not.
* Playwright installation :
	* Create folder in C drive "PlaywrightTestAutomation" with this name.
  * Open git bash at this path and clone the repo.
    ```
    git clone https://github.com/automationapptest/home-test.git
    ```
  * Install project dependencies
    ```
    npm install
    ```
  * Install Playwright browsers
    ```
    npx playwright install
    ```

### Execution Program

* There are 2 Ways to run playwrigh test cases.
	* First : Open CMD at "C:\PlaywrightTestAutomation" and run below command to run all test cases.
	  ```
	  npx playwright test
	  ```
* Second : Download Playwright test runner extension on VS code and using that play button we can we whole file or test case by test case.

## Version History

* 1.0.0
    * Initial Release
