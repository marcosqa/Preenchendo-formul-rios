***Settings***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

***Test Cases***
Login com sucesso
    Go To                     ${url}/index.php?controller=authentication
    Input Text                css:input[id=email]                           marcos.tads@hotmail.com
    Input Text                css:input[name=passwd]                        sistema
    Click Element             css:button[name=SubmitLogin]

    Page Should Contain       Welcome to your account. Here you can manage all of your personal information and orders.