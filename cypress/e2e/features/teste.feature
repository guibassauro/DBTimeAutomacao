Feature: Teste DB Time
  Como usuário quero acessar o DB Time

Scenario: Cria um projeto com anos na Lei do Bem como admin
    Given um administrador logado
    When cria um projeto inovação com o ano 2025 na Lei do Bem
    Then deve criar o projeto

Scenario: Editar um projeto com anos na Lei do Bem como admin
    Given um administrador logado
    When edita um projeto inovação para adicionar um ano na Lei do Bem
    Then deve salvar as alterações

Scenario: Editar um projeto com múltiplos anos na Lei do Bem
    Given um administrador logado
    When edita um projeto inovação para adicionar múltiplos anos na Lei do Bem
    Then deve salvar as alterações

Scenario: Criar um projeto inovação sem anos na Lei do Bem
    Given um administrador logado
    When cria um projeto Inovação sem anos na Lei do Bem
    Then deve criar o projeto

Scenario: Editar um projeto Inovação sem anos na Lei do Bem
    Given um administrador logado
    When edita um projeto para excluir os anos na Lei do Bem
    Then deve salvar o projeto

Scenario: Criar um projeto não Inovação
    Given um administrador logado
    When cria um projeto que não é inovação
    Then não deve aparecer o campo da Lei do Bem

Scenario: Criar um projeto inovação sem anos na Lei do Bem como gerente
    Given um gerente logado
    When cria um projeto inovação sem anos na Lei do Bem
    Then deve aparecer o campo de anos da Lei do Bem e deve criar o projeto

Scenario: Editar um projeto sem anos na Lei do Bem como gerente
    Given um gerente logado
    When edita um projeto inovação sem anos na Lei do Bem
    Then deve aparecer o campo de anos da Lei do Bem e deve editar o projeto

Scenario: Criar um projeto Inovação com anos na Lei do Bem como gerente
    Given um gerente logado
    When cria um projeto com anos na Lei do Bem
    Then deve dar o aviso de que apenas adms podem manipular os anos na Lei do Bem

Scenario: Editar um ano mudando o campo de Lei do Bem como gerente
    Given um gerente logado
    When edita um projeto adicionando anos na Lei do Bem
    Then deve dar o aviso de que apenas adms podem manipular os anos na Lei do Bem

Scenario: Editar um ano excluindo todos os itens no campo Lei do Bem como gerente
    Given um gerente logado
    When edita um projeto excluindo todos os anos na Lei do Bem
    Then deve dar o aviso de que apenas adms podem manipular os anos na Lei do Bem
