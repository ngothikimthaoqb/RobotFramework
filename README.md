# RobotFramework

## I. Setup environment
### 1. Clone the Project at [RobotFramework](https://github.com/ngothikimthaoqb/RobotFramework)
### 2. Installation instructions
- Python installation
    [Installing Python on Linux](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#installing-python-on-linux)
    [Installing Python on Windows](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#installing-python-on-windows)
    [Installing Python on macOS](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#installing-python-on-macos)
- Installing using pip
    ```bash
    $ pip install robotframework
    $ pip install selenium
    $ pip install robotframework-seleniumlibrary
    $ pip install robotframework-appiumlibrary
    ```
- [Download and Install Appium Server](https://appium.io/downloads.html)
- [Start appium server](https://github.com/appium/appium-desktop)

## II. Running script
### 1. Running Selenium test script
- Run by command:
    - Open CMD in Project folder
    - Enter the commands:  
        ```bash
        $ robot --listener allure_robotframework ./web-selenium/Tests/
        ```
- Run by VS code:
    - Navigate to folder: web-selenium/Tests/
    - Right-click on the file "*Test.robot"
    - Choose option "Run '..."
### 2. Running Appium test script
#### 2.1 Setup and run with Emulator Android device
- Setup
    - [Download and install Android studio](https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwixtoOF0M38AhV-mGYCHX0hCdMYABAAGgJzbQ&ohost=www.google.com&cid=CAESauD2I4m5Yw7cB13D3yDZEhtfhp6F2MIThcG3w_w5rC4y5ZRYPc3aqjvhTL3EC2-p_38UVQ0pQQ4zOZTLWIRraVwVyTYNX2amzQ_j2j_b3a56IThvhco8xYG7MccqtRPG4o7d5J5tYLaWQUM&sig=AOD64_38hOyiBoe4dlmN2A4T6WnE3wir_w&q&adurl&ved=2ahUKEwjJ8PqE0M38AhU-IrcAHfvsBgMQ0Qx6BAgKEAE)
    - [Set up an Android device emulator image](https://developer.android.com/design-for-safety/privacy-sandbox/download#:~:text=In%20Android%20Studio%2C%20go%20to,appears%2C%20and%20select%20Create%20device.)
    - The example Andoird device:
        - Device name: Pixel 3XL API 30
        - Platform name: Android
        - Platform version: 11
- Run android test script
    - Run by command:
        - Open CMD in Project folder
        - Enter the commands:  
            ```bash
            $ robot --listener allure_robotframework ./mobile-appium/Tests/Multiplication_Android_Test.robot
            ```
    - Run by VS code:
        - Navigate to folder: /mobile-appium/Tests/
        - Right-click on the file "Multiplication_Android_Test.robot"
        - Choose option "Run '..."
#### 2.2 Run with Emulator iOS device
- Setup
    - [Download and install Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)
    - [Set up an iOS device](https://developer.apple.com/documentation/xcode/installing-additional-simulator-runtimes)
    - The example iOS device:
        - Device name: iphone 11
        - Platform name: iOss
        - Platform version: 15
        - Udid: 8BC51814-30A4-44BB-8C23-DC5AD3BD7CBD
- Run android test script
    - Run by command:
        - Open CMD in Project folder
        - Enter the commands:  
            ```bash
            $ robot --listener allure_robotframework ./mobile-appium/Tests/UIKitCatalog_IOS_Test.robot
            ```
    - Run by VS code:
        - Navigate to folder: /mobile-appium/Tests/
        - Right-click on the file "UIKitCatalog_IOS_Test.robot"
        - Choose option "Run '..."

