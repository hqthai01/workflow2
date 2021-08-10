*** Settings ***
Variables  ../Locators/Common_Locators.py

*** Keywords ***

Open the browser and go to the admin page
    [Arguments]     ${url}     ${browser}
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    --headless
    Call Method    ${chrome_options}   add_argument    --disable-gpu
    Call Method    ${chrome_options}   add_argument    --disable-extensions
    Call Method    ${chrome_options}   add_argument    --no-sandbox
    Call Method    ${chrome_options}   add_argument    --window-size\=1920,1080
    ${options}=     Call Method     ${chrome_options}    to_capabilities
    ${exec_path}=    /usr/lib/chromium-browser/chromedriver
    Create Webdriver    Chrome    executable_path=${exec_path}   chrome_options=${chrome options}
    Go To    ${url}
    set selenium speed    ${SELENIUM_SPEED}
    Maximize Browser Window
    # open browser    ${url}    ${browser.lower()}

    # set selenium speed    ${SELENIUM_SPEED}

    # Maximize Browser Window

    ${current_title}        Get Title

    should be equal     ${TITLE}    ${current_title}

The User Logins To the System
    [Arguments]     ${username}     ${password}

    Common - Input text to element      ${username_locator}     ${username}

    Common - Input text to element     ${password_locator}      ${password}

    Common - Click on a button          ${btn_login_locator}

    Verify the user logins to the Admin page successfully

Verify the user logins to the Admin page successfully

    ${title_current_page}       Common - Get the title on the current page      ${user_icon_locator}

    should be equal     ${TITLE}     ${title_current_page}

Close All Browsers

    Close browser

Click on the context menu

    Common - Wait until the loading icon loads successfully     ${loader_icon_locator}

    Common - Click on an element        ${bnt_context_menu}
