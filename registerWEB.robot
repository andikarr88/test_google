*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Browser
${Browser}    chrome
#SiteURLhome
${URLHome}    https://www.google.com/
#TimeDelay
${Delay}    2s

*** Keywords ***
Buka Google.com
    Open Browser    ${URLHome}    ${Browser}
    Maximize Browser Window
Click Login Button
    Click Element    xpath=//*[@id="gb"]/div/div[2]/a
Click Buat Akun
    Sleep    ${Delay}
    Click Element    xpath=//*[@id="yDmH0d"]/c-wiz/div/div[2]/div/div[2]/div/div[2]/div/div/div[1]/div/button/span
Click Private Akun
    Sleep    ${Delay}
    Click Element    xpath=//*[@id="yDmH0d"]/c-wiz/div/div[2]/div/div[2]/div/div[2]/div/div/div[2]/div/ul/li[1]/span[2]
Input Nama Depan
    Input Text    xpath=//*[@id="firstName"]    teTxt
Input Nama Belakang
    Input Text    xpath=//*[@id="lastName"]    text
Input Alamat Email
    Input Text    xpath=//*[@id="username"]    tesfraf13243rwsfse
Input Password
    Input Text    xpath=//*[@id="passwd"]/div[1]/div/div[1]/input    Test12345@
Input Confirm Password
    Input Text    xpath=//*[@id="confirm-passwd"]/div[1]/div/div[1]/input    Test12345@
Click Button Berikutnya
    Sleep    ${Delay}
    Click Element    xpath=//span[normalize-space()='Berikutnya']
Fill Number Telepon
    Sleep    ${Delay}
    Input Text    xpath=//*[@id="phoneNumberId"]    083806978636

*** Test Cases ***
Open Buat Akun
    Buka Google.com
    Click Login Button
    Click Buat Akun
    Click Private Akun
Input Nama, Alamat Email, Password
    Input Nama Depan
    Input Nama Belakang
    Input Alamat Email
    Input Password
    Input Confirm Password
    Click Button Berikutnya
Input Number Telepon
    Fill Number Telepon
    Click Button Berikutnya