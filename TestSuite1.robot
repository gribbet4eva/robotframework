*** Test Cases ***
MyFirstTest
    [Tags]    Earth
    Log    Hello World  

MySecondTest
    Log    2nd test
    # Another way to use Tags
    #Set Tags    regression1
    #Remove Tags  regresion1
MyThirdTest
    [Tags]    Wind
    Log    3rd test..  
    
MyFourthTest
    [Tags]    Fire
    Log    4th test..
  
# FirstSeleniumTest
      # # Create WebDriver    Chrome    location
      # Open Browser                  https://google.com        chrome
      # Set Browser Implicit Wait     5
      # Input Text                    name=q                Automation step by step
      # Press Keys                    name=q    ENTER
      # Sleep                         5s        
      # Close Browser
      # Log                           Test Completed
      
# SampleLoginTest
    # [Documentation]    Sample login test
    # Open Browser                  ${URL}     chrome
    # Set Browser Implicit Wait     5
    # LoginKW                       # User defined Keyword
    # Click Element                 id=welcome
    # Click Element                 link=Logout
    # Close Browser 
    # Log                           Test Completed 
    # Log                           Test was executed by %{username} on %{os}
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/    # scalar variable
@{CREDENTIALS}    Admin    admin123                     # list variable, deprecated @ RF 3.2
&{LOGINDATA}   username=Admin    password=admin123      # dictionary variable

*** Keywords ***
 LoginKW
    Input Text        id=txtUsername   @{CREDENTIALS}[0]
    Input Password    id=txtPassword   &{LOGINDATA}[password]
    Click Button      id=btnLogin
    