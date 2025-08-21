*** Settings ***
Resource    ${EXECDIR}/Configuration/AllResource.robot
Documentation     `List Keyword in LoginPage for to used`
...                Click    : |Click Car Information| ,|Click Owner Information| ,|Click Submit Button| ,|Click Next Button|
...                Input    : |Input Field Car Information Popup| ,|Input Field Owner Information Popup|

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
    VAR    ${_BTN_CAR_INFORMATION}                ${Xpath.Information.btnCarInformation}                           scope=test
    VAR    ${_BTN_BRAND}                          ${Xpath.Information.CarPopup.btnBrand}                        scope=test
    VAR    ${_RADIO_BRAND}                        ${Xpath.Information.CarPopup.radioBrand}                      scope=test
    VAR    ${_BTN_MODEL}                          ${Xpath.Information.CarPopup.btnModel}                        scope=test
    VAR    ${_RADIO_MODEL}                        ${Xpath.Information.CarPopup.radioModel}                      scope=test
    VAR    ${_BTN_YEAR_OF_REGISTRATION}           ${Xpath.Information.CarPopup.btnYearOfRegistration}           scope=test
    VAR    ${_RADIO_YEAR_OF_REGISTRATION}         ${Xpath.Information.CarPopup.radioYearOfRegistration}         scope=test
    VAR    ${_LBL_VEHICLE_NUMBER}                 ${Xpath.Information.CarPopup.lblVehicleNumber}                scope=test
    VAR    ${_BTN_CAR_COLOR}                      ${Xpath.Information.CarPopup.btnCarColor}                     scope=test
    VAR    ${_RADIO_CAR_COLOR}                    ${Xpath.Information.CarPopup.radioCarColor}                   scope=test
    VAR    ${_LBL_ENGINE_SIZE}                    ${Xpath.Information.CarPopup.lblEngineSize}                   scope=test
    VAR    ${_LBL_VEHICLE_REGISTRATION_NUMBER}    ${Xpath.Information.CarPopup.lblVehicleRegistrationNumber}    scope=test
    VAR    ${_BTN_PROVINCE}                       ${Xpath.Information.CarPopup.btnProVince}                     scope=test
    VAR    ${_RADIO_PROVINCE}                     ${Xpath.Information.CarPopup.radioProVince}                   scope=test
    VAR    ${_BTN_DAY}                            ${Xpath.Information.CarPopup.btnDay}                          scope=test
    VAR    ${_RADIO_DAY}                          ${Xpath.Information.CarPopup.radioDay}                        scope=test
    VAR    ${_BTN_MOUNT}                          ${Xpath.Information.CarPopup.btnMount}                        scope=test
    VAR    ${_RADIO_MOUNT}                        ${Xpath.Information.CarPopup.radioMount}                      scope=test
    VAR    ${_BTN_YEAR}                           ${Xpath.Information.CarPopup.btnYear}                         scope=test
    VAR    ${_RADIO_YEAR}                         ${Xpath.Information.CarPopup.radioYear}                       scope=test
    VAR    ${_BTN_SUBMIT}                         ${Xpath.Information.CarPopup.btnSubmit}                       scope=test
    VAR    ${_BTN_OWNER_INFORMATION}              ${Xpath.Information.btnOwnerInformation}                      scope=test
    VAR    ${_BTN_PREFIX}                         ${Xpath.Information.OwnerPopup.btnPrefix}                     scope=test
    VAR    ${_RADIO_PREFIX}                       ${Xpath.Information.OwnerPopup.radioPrefix}                   scope=test
    VAR    ${_LBL_FRIST_NAME}                     ${Xpath.Information.OwnerPopup.lblFristName}                  scope=test
    VAR    ${_LBL_LAST_NAME}                      ${Xpath.Information.OwnerPopup.lblLastName}                   scope=test
    VAR    ${_BTN_OWNER_DAY}                      ${Xpath.Information.OwnerPopup.btnDay}                        scope=test
    VAR    ${_RADIO_OWNER_DAY}                    ${Xpath.Information.OwnerPopup.radioDay}                      scope=test
    VAR    ${_BTN_OWNER_MOUNT}                    ${Xpath.Information.OwnerPopup.btnMount}                      scope=test
    VAR    ${_RADIO_OWNER_MOUNT}                  ${Xpath.Information.OwnerPopup.radioMount}                    scope=test
    VAR    ${_BTN_OWNER_YEAR}                     ${Xpath.Information.OwnerPopup.btnYear}                       scope=test
    VAR    ${_RADIO_OWNER_YEAR}                   ${Xpath.Information.OwnerPopup.radioYear}                     scope=test
    VAR    ${_LBL_ID_CARD}                        ${Xpath.Information.OwnerPopup.lblIDCard}                     scope=test
    VAR    ${_LBL_ADDRESS_ID_CRAD}                ${Xpath.Information.OwnerPopup.lblAddressIDCard}              scope=test
    VAR    ${_LBL_ZIP_CODE}                       ${Xpath.Information.OwnerPopup.lblZipCode}                    scope=test
    VAR    ${_LBL_OWNER_PROVICE}                  ${Xpath.Information.OwnerPopup.lblProvice}                    scope=test
    VAR    ${_LBL_COUNTY}                         ${Xpath.Information.OwnerPopup.lblCounty}                     scope=test
    VAR    ${_LBL_DISTRICT}                       ${Xpath.Information.OwnerPopup.lblDistrict}                   scope=test
    VAR    ${_LBL_EMAIL}                          ${Xpath.Information.OwnerPopup.lblEmail}                      scope=test
    VAR    ${_LBL_CONFIRM_EMAIL}                  ${Xpath.Information.OwnerPopup.lblConfirmEmail}               scope=test
    VAR    ${_LBL_PHONE}                          ${Xpath.Information.OwnerPopup.lblPhone}                      scope=test
    VAR    ${_BTN_OWNER_SUBMIT}                   ${Xpath.Information.OwnerPopup.btnSubmit}                     scope=test
    VAR    ${_BTN_MAIN_SUBMIT}                    ${Xpath.Information.btnSubmit}                                scope=test
    VAR    ${_BTN_NEXT}                           ${Xpath.Information.btnNext}                                  scope=test

Click Car Information
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword เลือก Insurance Type
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Click Car Information     🗂️ ใช้ภายในไฟล์
    ...          |     InformationPage.Click Car Information   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${timeout}=${Time_Out.Default}     
    ${Status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${_BTN_CAR_INFORMATION}    ${timeout}       
    IF    ${Status}
        SeleniumLibrary.Click Element    ${_BTN_CAR_INFORMATION}
    ELSE
        Fail    msg=Button Not Found
    END

Click Submit Button
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword เลือก Insurance Type
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Click Submit Button     🗂️ ใช้ภายในไฟล์
    ...          |     InformationPage.Click Submit Button   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${timeout}=${Time_Out.Default}     
    ${Status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${_BTN_MAIN_SUBMIT}    ${timeout}       
    IF    ${Status}
        SeleniumLibrary.Click Element    ${_BTN_MAIN_SUBMIT}
    ELSE
        Fail    msg=Button Not Found
    END

Click Next Button
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword เลือก Insurance Type
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Click Next Button     🗂️ ใช้ภายในไฟล์
    ...          |     InformationPage.Click Next Button   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${timeout}=${Time_Out.Default}     
    ${Status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${_BTN_NEXT}    ${timeout}       
    IF    ${Status}
        SeleniumLibrary.Click Element    ${_BTN_NEXT}
    ELSE
        Fail    msg=Button Not Found
    END

Input Field Car Information Popup
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword ระบุข้อมูลรถ
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Required Parameter |***
    ...          |     ${engine_size}   : ขนาดเครื่องยนต์
    ...          --------------------------------------------------------------------------
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Input Field Car Information Popup    ${password}     🗂️ ใช้ภายในไฟล์
    ...          |     InformationPage.Input Field Car Information Popup    ${password}   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${engine_size}    ${timeout}=${Time_Out.Default}     
    ${Status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${_BTN_BRAND}    ${timeout}       
    IF    ${Status}
        SeleniumLibrary.Click Element    locator=${_BTN_BRAND}
        SeleniumLibrary.Click Element    locator=${_RADIO_BRAND}
        SeleniumLibrary.Click Element    locator=${_BTN_MODEL}
        SeleniumLibrary.Click Element    locator=${_RADIO_MODEL}
        SeleniumLibrary.Click Element    locator=${_BTN_YEAR_OF_REGISTRATION}
        SeleniumLibrary.Click Element    locator=${_RADIO_YEAR_OF_REGISTRATION}
        # Generate random chassis number (17 characters)
        ${random_chassis}    Generate Random String    17    ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
        SeleniumLibrary.Input Text    locator=${_LBL_VEHICLE_NUMBER}    text=${random_chassis}
        SeleniumLibrary.Click Element    locator=${_BTN_CAR_COLOR}
        SeleniumLibrary.Click Element    locator=${_RADIO_CAR_COLOR}
        SeleniumLibrary.Input Text    locator=${_LBL_ENGINE_SIZE}    text=${engine_size}
        # Format: 2 ตัวอักษร + space + 4 ตัวเลข (เช่น กข 1234)
        ${letters}    Generate Random String    2    กขคงจฉชซฌญฎฏฐฑฒณดตถทธนบปผฝพฟภมยรลวศษสหฬอฮ
        ${numbers}    Generate Random String    4    0123456789
        VAR    ${license_plate}    ${letters}${numbers}    scope=test
        SeleniumLibrary.Input Text    locator=${_LBL_VEHICLE_REGISTRATION_NUMBER}    text=${license_plate}
        SeleniumLibrary.Click Element    locator=${_BTN_PROVINCE}
        SeleniumLibrary.Click Element    locator=${_RADIO_PROVINCE}
        SeleniumLibrary.Click Element    locator=${_BTN_DAY}
        SeleniumLibrary.Click Element    locator=${_RADIO_DAY}
        SeleniumLibrary.Click Element    locator=${_BTN_MOUNT}
        SeleniumLibrary.Click Element    locator=${_RADIO_MOUNT}
        SeleniumLibrary.Click Element    locator=${_BTN_YEAR}
        SeleniumLibrary.Click Element    locator=${_RADIO_YEAR}
        SeleniumLibrary.Click Element    locator=${_BTN_SUBMIT}
    ELSE
        Fail    msg=Popup Not Found
    END

Click Owner Information
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword เลือก Insurance Type
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Click Owner Information     🗂️ ใช้ภายในไฟล์
    ...          |     InformationPage.Click Owner Information   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${timeout}=${Time_Out.Default}     
    ${Status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${_BTN_OWNER_INFORMATION}    ${timeout}       
    IF    ${Status}
        SeleniumLibrary.Click Element    ${_BTN_OWNER_INFORMATION}
    ELSE
        Fail    msg=Button Not Found
    END

Input Field Owner Information Popup
    [Documentation]    Owner : Danai Lertkamjornwat
    ...          |     ***| Description |***
    ...          |     Keyword ระบุข้อมูลรถ
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Required Parameter |***
    ...          |     ${frist_name}        : ชื่อ
    ...          |     ${last_name}         : นามสกุล
    ...          |     ${address_id_card}   : ที่อยู่ตามบัตรประชาชน
    ...          |     ${zip_code}          : รหัสไปรษณีย์
    ...          |     ${provice}           : จังหวัด
    ...          |     ${county}            : เขต
    ...          |     ${district}          : แขวง
    ...          |     ${email}             : อีเมล
    ...          |     ${phone}             : เบอร์โทร
    ...          --------------------------------------------------------------------------
    ...          |     ***| Optional Parameter |***
    ...          |     $timeout    : เวลา Wait Element (ค่า default = ${Time_Out.Default})
    ...          -------------------------------------------------------------------------- 
    ...          |     ***| Examples of use |***
    ...          |     Input Field Owner Information Popup    ${password}     🗂️ ใช้ภายในไฟล์
    ...          |     InformationPage.Input Field Owner Information Popup    ${password}   🌐 ใช้ภายนอกไฟล์
    ...          ==>  
    [Setup]    _Set Test Local Variables  
    [Arguments]    ${frist_name}    ${last_name}    ${address_id_card}    ${zip_code}    
    ...    ${provice}    ${county}    ${district}    ${phone}    ${timeout}=${Time_Out.Default}     
    ${Status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${_BTN_PREFIX}    ${timeout}       
    IF    ${Status}
        SeleniumLibrary.Click Element    locator=${_BTN_PREFIX}
        SeleniumLibrary.Click Element    locator=${_RADIO_PREFIX}
        SeleniumLibrary.Input Text    locator=${_LBL_FRIST_NAME}    text=${frist_name}
        SeleniumLibrary.Input Text    locator=${_LBL_LAST_NAME}    text=${last_name}
        SeleniumLibrary.Click Element    locator=${_BTN_OWNER_DAY}
        SeleniumLibrary.Click Element    locator=${_RADIO_OWNER_DAY}
        SeleniumLibrary.Click Element    locator=${_BTN_OWNER_MOUNT}
        SeleniumLibrary.Click Element    locator=${_RADIO_OWNER_MOUNT}
        SeleniumLibrary.Click Element    locator=${_BTN_OWNER_YEAR}
        SeleniumLibrary.Click Element    locator=${_RADIO_OWNER_YEAR}
        # Generate 11 random digits first
        ${random_11}    Generate Random String    11    0123456789
        # Combine with first digit
        ${first_12}    Set Variable    1${random_11}
        # Calculate check digit
        ${sum}    Evaluate    sum(int('${first_12}'[i]) * (13-i) for i in range(12))
        ${check_digit}    Evaluate    str((11 - (${sum} % 11)) % 10)
        # Combine to get valid ID
        ${id_number}    Set Variable    ${first_12}${check_digit}
        SeleniumLibrary.Input Text    locator=${_LBL_ID_CARD}    text=${id_number}
        SeleniumLibrary.Input Text    locator=${_LBL_ADDRESS_ID_CRAD}    text=${address_id_card}
        SeleniumLibrary.Input Text    locator=${_LBL_ZIP_CODE}    text=${zip_code}
        Sleep    3s
        # SeleniumLibrary.Input Text    locator=${_LBL_OWNER_PROVICE}    text=${provice}
        # SeleniumLibrary.Input Text    locator=${_LBL_COUNTY}    text=${county}
        # SeleniumLibrary.Input Text    locator=${_LBL_DISTRICT}    text=${district}
        ${random_user}    Generate Random String    8    abcdefghijklmnopqrstuvwxyz0123456789
        SeleniumLibrary.Input Text    locator=${_LBL_EMAIL}    text=${random_user}@gmail.com 
        SeleniumLibrary.Input Text    locator=${_LBL_PHONE}    text=${phone}
        SeleniumLibrary.Input Text    locator=${_LBL_CONFIRM_EMAIL}    text=${random_user}@gmail.com
        SeleniumLibrary.Click Element    locator=${_BTN_OWNER_SUBMIT}
    ELSE
        Fail    msg=Popup Not Found
    END
