*** Settings ***
# Page
Resource    ${EXECDIR}/Pages/MainPage.robot
Resource    ${EXECDIR}/Pages/BenefitsPage.robot
Resource    ${EXECDIR}/Pages/InformationPage.robot
Resource    ${EXECDIR}/Pages/SummaryInformationPage.robot
Suite Teardown    Close Browser

*** Variables ***
# Data Test    
${_URL}                           https://insurverse-uat-environment-insure.insurverse.co.th/shopping/compulsory  
${_BROWSER}                       chrome
${_FRIST_NAME}                    ดนัย                
${_LAST_NAME}                     เลิศกำจรวัฒน์
${_ADDRESS_ID_CARD}               91/22
${_ZIP_CODE}                      10140
${_PROVICE}                       กรุงเทพมหานคร
${_COUNTY}                        ทุ่งครุ่
${_DISTRICT}                      บางมด
${_PHONE}                         0998891115

*** Test Cases ***
Select Insurance Success
    [Documentation]    Owner : Danai Lertkamjornwat
    ...           |    ***| Description |***
    ...           |    ตรวจสอบเข้าสู่ระบบสำเร็จ
    ...           --------------------------------------------------------------------------
    ...           |    ***| Test Step |***
    ...           |    1. เปิดเว็บไซต์
    ...           |    2. เลือกประเภทประกัน
    ...           |    3. กดปุ่มถูกใจแผนนี้
    ...           |    4. ระบุข้อมูลประกันรถยนต์
    ...           |    5. ระบุข้อมูลปส่วนตัว
    ...           |    6. กดปุ่มดำเนินการต่อ
    ...           |    7. กดปุ่มถัดไป
    ...           |    8. กดปุ่มชำระเงิน
    ...           |    9. กดปุ่มขอเลข OTP
    ...           --------------------------------------------------------------------------
    ...           |    ***| Expected Result |***
    ...           |    ต้องเข้าสู่ระบบได้ถูกต้อง
    ...           ==> 
    [Tags]    success
    MainPage.Open Web Browser    url=${_URL}    browser=${_BROWSER}
    MainPage.Select Insurance Type
    BenefitsPage.Click Like This Plan Button
    InformationPage.Click Car Information
    InformationPage.Input Field Car Information Popup    engine_size=2500 
    InformationPage.Click Owner Information
    InformationPage.Input Field Owner Information Popup    frist_name=${_FRIST_NAME}    last_name=${_LAST_NAME}    address_id_card=${_ADDRESS_ID_CARD}    
    ...    zip_code=${_ZIP_CODE}    provice=${_PROVICE}    county=${_COUNTY}    district=${_DISTRICT}    phone=${_PHONE}
    InformationPage.Click Submit Button
    InformationPage.Click Next Button
    SummaryInformationPage.Click Choose Payment Method Button
    SummaryInformationPage.Click OTP Button
