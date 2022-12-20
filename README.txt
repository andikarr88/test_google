How to setup Robot Framework and Running
-------------------------------------------

Step 1 : Pre-check
       Check if python is already installed
  python --version
  pip --version
       Check if robot framework is already installed
  robot --version

Step 2 : Install Python 
      check on cmd : python --version
          pip --version

Step 3 : Set Python in environment variables
      C:\Python27;C:\Python27\Scripts;
      Check: 
                python --version
  pip --version

Step 4 : Install robot framework
       pip install robotframework
       to uninstall : pip uninstall robotframework

Step 5 : Check on cmd :
  robot --version
  pybot --version

Step 6 : install selenium library and appium library
    pip install robotframework-seleniumlibrary
    pip install robotframework-appiumlibrary

Step 7 :  open VS Code install following extension this :
    - Python
    - Robot Framework Language Server from robocorp
    
Step 8: after install restart VS Code

Step 9 : install android studio for SDK android

Step 10 : Open AVD manager and running emulator android

Step 11 : Installation via Desktop App DownloadSimply download the latest version of Appium Desktop from 
    the https://github.com/appium/appium-desktop/releases.

Step 12 : Open GUI Appium Desktop and start server appium

Step 13 :Running registerWEB or regsiterMB with click right in file .robot select Robot Framework 
    and select Run test/Task Suite