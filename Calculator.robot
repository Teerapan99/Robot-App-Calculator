*** Settings ***
Library           AppiumLibrary
Library           BuiltIn



*** Variables ***

${zero}                 xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_0']
${one}                  xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_1']
${two}                  xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_2']
${three}                xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_3']
${four}                 xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_4']
${five}                 xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_5']
${six}                  xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_6']
${seven}                xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_7']
${eight}                xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_8']
${nine}                 xpath=//android.widget.Button[@resource-id='com.android.calculator2:id/digit_9']
${plus}                 xpath=//android.widget.ImageView[@resource-id='com.android.calculator2:id/op_add']
${minus}                xpath=//android.widget.ImageView[@resource-id='com.android.calculator2:id/op_sub']
${multiplied by}        xpath=//android.widget.ImageView[@resource-id='com.android.calculator2:id/op_mul']
${divided by}           xpath=//android.widget.ImageView[@resource-id='com.android.calculator2:id/op_div']
${equals}               xpath=//android.widget.ImageView[@resource-id='com.android.calculator2:id/eq']
${Clear}                xpath=//android.widget.ImageView[@resource-id='com.android.calculator2:id/op_clr']
${data_Excel}           Test Data.xlsx

*** Keywords ***

Calculator2
#P20
    Open Application     http://localhost:4723/wd/hub     platformName=Android
    ...    platformVersion=9       deviceName=UBV7N18327001741
    ...    appPackage=com.android.calculator2
    ...    appActivity=com.android.calculator2.Calculator     noReset=True
Cal 2+2
    sleep    3s
    Click Element     ${two}
    Click Element     ${plus}
    Click Element     ${two}
    Click Element     ${equals}

*** Test Cases ***
Open
     [Documentation]    Test App Calculator on Mobile Huawei P20
     Calculator2
     Cal 2+2


    # Calculator2
    # Cal 2+2
