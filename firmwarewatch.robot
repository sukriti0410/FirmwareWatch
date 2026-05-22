*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Validate Device Status API
    Create Session    firmwarewatch    ${BASE_URL}
    ${response}=    GET On Session    firmwarewatch    /todos/1
    Should Be Equal As Integers    ${response.status_code}    200
    Log To Console    FirmwareWatch API Validation PASS