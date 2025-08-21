*** Settings ***
Resource    ${EXECDIR}/Configuration/AllResource.robot
Documentation     `List Keyword in LoginPage for to used`
...                Open      : |Open Web Browser| 
...                Select    : |Select Insurance Type|

*** Keywords ***
_Set Test Local Variables
    [Documentation]    เตรียมตัวแปรสำหรับใช้งานในแต่ละ Keywords
    [Tags]    robot:private
    # Timeout
    VAR    ${_TIMEOUT_RETURN_STATUS}              ${Time_Out.Return_Status}                                     scope=test            
    VAR    ${_TIMEOUT_RETURN_STATUS_MEDIUM}       ${Time_Out.Return_Status_Medium}                              scope=test
    VAR    ${_TIMEOUT_RETURN_STATUS_QUICK}        ${Time_Out.Return_Status_Quick}                               scope=test
    VAR    ${_TIMEOUT_LONG}                       ${Time_Out.Long}                                              scope=test
    VAR    ${_TIMEOUT_DEFAULT}                    ${Time_Out.Default}                                           scope=test
    # Locator
    VAR    ${_BTN}                                ${Xpath.Main.btnBox}                                          scope=test
    VAR    ${_COOKIE}                             ${Xpath.Main.Cookie}                                          scope=test

Open Web Browser
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword สำหรับเข้าสูเว็บไซต์
    ...          --------------------------------------------------------------------------
    ...          |     ***| Required Parameter |***
    ...          |     $url       : ระบุลิ้งเว็ปไซต์
    ...          |     $browser   : ระบุบราวเซอร์
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Open Web Browser     ${url}    ${browser}  🗂️ ใช้ภายในไฟล์
    ...          |     MainPage.Open Web Browser   ${url}    ${browser}  🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables
    [Arguments]    ${url}    ${browser}    
    ${browser_lower}    String.Convert To Lower Case    ${browser}
    SeleniumLibrary.Open Browser    url=${url}    browser=${browser_lower}
    SeleniumLibrary.Maximize Browser Window
    Sleep    5s
    SeleniumLibrary.Click Element    ${_COOKIE}

Select Insurance Type
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword เลือก Insurance Type
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Select Insurance Type     🗂️ ใช้ภายในไฟล์
    ...          |     MainPage.Select Insurance Type   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${timeout}=${Time_Out.Default}     
    ${Status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${_BTN}    ${timeout}       
    IF    ${Status}
        SeleniumLibrary.Click Element    ${_BTN}
    ELSE
        Fail    msg=Button Not Found
    END


