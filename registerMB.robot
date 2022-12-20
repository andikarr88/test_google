*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    9.0
${DEVICE_NAME}    emulator-5554
${Activity_NAME}    com.google.android.apps.chrome.Main
${PACKAGE_NAME}    com.android.chrome
#TimeDelay
${Delay}    2s

*** Keywords ***
Open Chrome Browser
    Open Application   ${REMOTE_URL}
    ...        platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...   deviceName=${DEVICE_NAME}
    ...   automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    appActivity=${Activity_NAME}
    ...    appPackage=${PACKAGE_NAME}
    ...    appWaitForLaunch=true

Click Accept&continue
    Click Element    xpath=///hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.Button
Click continue
    Click Element    xpath=///hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.Button[2]
Click ok,got it
    Click Element    xpath=///hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.Button[2]
Click search field
    Click Element    xpath=//android.support.v7.widget.RecyclerView[@content-desc="New tab"]/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.EditText
Input Google.com
    Sleep    ${Delay}
    Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.EditText    https://www.google.com
Go To Google.com
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.TextView[2]

*** Test Cases ***
Open Create Account
    Open Chrome Browser
    Click Accept&continue
    Click continue
    Click ok,got it
    Click search field
    Input Google.com
    Go To Google.com