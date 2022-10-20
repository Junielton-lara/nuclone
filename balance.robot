***Settings***
Library     AppiumLibrary

***Test Cases***
Show My Balance
    Open Application    http://localhost:4724/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel_2_API_28
    ...                 app=${EXECDIR}/app/nuclone.apk
    ...                 udid=emulator-5554

    Wait Until Element Is Visible   accessibility_id=card-hero      40

    Click Element       accessibility_id=show-balance

    Wait Until Element Is Visible   accessibility_id=user-balance   40
    Element Text Should Be          accessibility_id=user-balance   R$ 5.500,00

    Capture Page Screenshot
    Close Application