*** Settings ***

Documentation    Suite de teste de cadastro de dog walker

Library        Browser

Resource        ../resources/base.resource

*** Test Cases ***

Deve poder cadastrar um novo dog walker

   
    ${dog_walker}    Create Dictionary        
    ...    name=Rodrigo Sousa        
    ...    email=rodrigodss89@gmail.com
    ...    cpf=40568438809
    ...    cep=04952120
    ...    street=Rua Ângela Verardo Silvestre
    ...    district=Vila Bela Vista (Zona Sul)
    ...    city_uf=São Paulo/SP
    ...    number=203
    ...    details=CASA 2
    ...    cnh=toretto.jpg

    Go to signup to
    Fill submit form    ${dog_walker}
    Submit signup form
    Popup should be        Recebemos o seu cadastro e em breve retornaremos o contato.

