***Settings***
Library     AppiumLibrary
Library     SeleniumLibrary

***Test Cases***
Show My Balance
    # Open Application    http://127.0.0.1:4723/wd/hub
    # ...                 automationName=UiAutomator2
    # ...                 platformName=Android
    # ...                 deviceName=Pixel_2_API_28
    # ...                 app=/root/tmp/nuclone.apk
    # ...                 udid=emulator-5554

    # Wait Until Element Is Visible   accessibility_id=card-hero      40

    # Click Element       accessibility_id=show-balance

    # Wait Until Element Is Visible   accessibility_id=user-balance   40
    # Element Text Should Be          accessibility_id=user-balance   R$ 5.500,00

    # Capture Page Screenshot
    # Close Application

    Open Browser    http://localhost:6080/    chrome
    Close Browser


#Executar dentro da pasta do projeto.
#App deve estar dentro de uma pasta na raiz chama sample_apk
#docker run --privileged -d -p 6080:6080 -p 5554:5554 -p 5555:5555 -p 4723:4723 -v $PWD/sample_apk:/root/tmp -e DEVICE="Samsung Galaxy S6" -e APPIUM=true --name android-container budtmo/docker-android-x86-8.1    