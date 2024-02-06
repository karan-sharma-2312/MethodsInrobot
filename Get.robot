*** Settings ***

Library  RequestsLibrary

*** Variables ***
${Url_one}      https://restful-booker.herokuapp.com/booking/1

*** Test Cases ***

Get_Request
    create session  mysession   ${Url_one}
    ${response} =   GET On Session  mysession  ${Url_one}
    log to console  This is Code : ${response.status_code}
    ${status_code}=  Convert To String   ${response.status_code}
    should be equal  ${status_code}     200
