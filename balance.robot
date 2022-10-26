***Settings***
Library     AppiumLibrary
#Library     SeleniumLibrary

***Test Cases***
Show My Balance
    Log to console  Iniciando....
    #Sleep   1m
    Open Application    http://127.0.0.1:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel_2_API_28
    ...                 app=/root/tmp/nuclone.apk
    ...                 udid=emulator-5554

    Wait Until Element Is Visible   accessibility_id=card-hero      40

    Click Element       accessibility_id=show-balance

    Wait Until Element Is Visible   accessibility_id=user-balance   40
    Element Text Should Be          accessibility_id=user-balance   R$ 5.500,00
    Wait Until Element Is Visible   accessibility_id=user-balance   40
    Element Text Should Be          accessibility_id=user-balance   R$ 5.500,00

    Capture Page Screenshot
    Close Application

    # Open Browser    https://www.google.com.br/    chrome
    # Close Browser
