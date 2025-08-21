*** Settings ***
Resource    ${EXECDIR}/Configuration/AllResource.robot
Documentation     `List Keyword in LoginPage for to used`
...                Click    : |Click Choose Payment Method Button| ,|Click OTP Button|

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
    VAR    ${_BTN_CHOOSE_PAYMENT_METHOD}          ${Xpath.SummaryInformation.btnChoosePaymentMethod}            scope=test
    VAR    ${_BTN_OTP}                            ${Xpath.SummaryInformation.btnOTP}                            scope=test

Click Choose Payment Method Button
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword กดปุ่ม ดำเนินการต่อ
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Click Choose Payment Method Button     🗂️ ใช้ภายในไฟล์
    ...          |     SummaryInformationPage.Click Choose Payment Method Button   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${timeout}=${Time_Out.Default}   
    Sleep    3s
    SeleniumLibrary.Scroll Element Into View    ${_BTN_CHOOSE_PAYMENT_METHOD} 
    SeleniumLibrary.Click Element    ${_BTN_CHOOSE_PAYMENT_METHOD}

Click OTP Button
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword กดปุ่ม ดำเนินการต่อ
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Click OTP Button     🗂️ ใช้ภายในไฟล์
    ...          |     SummaryInformationPage.Click OTP Button   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${timeout}=${Time_Out.Default}     
    ${Status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${_BTN_OTP}    ${timeout}       
    IF    ${Status}
        SeleniumLibrary.Click Element    ${_BTN_OTP}
    ELSE
        Fail    msg=Button Not Found
    END