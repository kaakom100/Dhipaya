*** Settings ***
Resource    ${EXECDIR}/Configuration/AllResource.robot
Documentation     `List Keyword in LoginPage for to used`
...                Click    : |Click Like This Plan Button|

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
    VAR    ${_BTN_LIKE_THIS_PLAN}                 ${Xpath.Benefits.btnLikeThisPlan}                             scope=test

Click Like This Plan Button
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword เลือก Insurance Type
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Click Like This Plan Button     🗂️ ใช้ภายในไฟล์
    ...          |     BenefitsPage.Click Like This Plan Button   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${timeout}=${Time_Out.Default}     
    ${Status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${_BTN_LIKE_THIS_PLAN}    ${timeout}       
    IF    ${Status}
        SeleniumLibrary.Click Element    ${_BTN_LIKE_THIS_PLAN}
    ELSE
        Fail    msg=Button Not Found
    END
