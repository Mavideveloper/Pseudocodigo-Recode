Algoritmo "AgenciaDeViagens"

Var
   clientes: vetor[1..100] de caractere
   nomeCliente: caractere
   cpf: vetor[1..100] de inteiro
   cpfCliente: inteiro
   destinos: vetor[1..100] de caractere
   nomeDestino: caractere
   preco: vetor[1..100] de real
   precoViagem: real
   totalClientes, totalDestinos, opcao, i: inteiro

Procedimento CadastrarCliente()
Inicio
   Se totalClientes < 100 Então
      Escreva ("Digite o nome do cliente:")
      Leia (nomeCliente)
      Escreva ("Digite o CPF do cliente:")
      Leia (cpfCliente)

      totalClientes <- totalClientes + 1
      para i de totalClientes ate totalClientes faca
         clientes[i] <- nomeCliente
         cpf[i] <- cpfCliente
      fimpara

      Escreval
      Escreva ("Cliente cadastrado com sucesso!")
   Senão
      Escreva ("Erro: Limite máximo de clientes atingido!")
   FimSe
FimProcedimento

Procedimento CadastrarDestino()
Inicio
   Se totalDestinos < 100 Então
      Escreva ("Digite o nome do destino:")
      Leia (nomeDestino)
      Escreva ("Digite o preço da viagem:")
      Leia (precoViagem)

      totalDestinos <- totalDestinos + 1
      para i de totalDestinos ate totalDestinos faca
         destinos[i] <- nomeDestino
         preco[i] <- precoViagem
      fimpara

      Escreval
      Escreva ("Destino cadastrado com sucesso!")
   Senão
      Escreva ("Erro: Limite máximo de destinos atingido!")
   FimSe
FimProcedimento

Procedimento ConsultarClientes()
Inicio
Escreval
   Escreval ("Lista de Clientes cadastrados:")
   Para i de 1 até totalClientes faça
      Escreva (("Nome: "), clientes[i], (" - CPF: "), cpf[i])
      Escreval
   FimPara
FimProcedimento

Procedimento ConsultarDestinos()
Inicio
   Escreval
   Escreval ("Lista de Destinos cadastrados:")
   Para i de 1 até totalDestinos faça
      Escreva (destinos[i], (" - Preço: R$"),preco[i])
      Escreval
   FimPara
FimProcedimento

Inicio
   totalClientes <- 0
   totalDestinos <- 0

   Repita
      Escreval
      Escreval ("-------- MENU ---------")
      Escreval ("1 - Cadastrar Clientes")
      Escreval ("2 - Cadastrar Destinos")
      Escreval ("3 - Consultar Clientes")
      Escreval ("4 - Consultar Destinos")
      Escreval ("5 - Sair")
      Escreval
      Escreva ("Escolha a opção desejada:")
      Leia (opcao)

      Escolha opcao
      Caso 1
         CadastrarCliente()
      Caso 2
         CadastrarDestino()
      Caso 3
         ConsultarClientes()
      Caso 4
         ConsultarDestinos()
      Caso 5
         Escreva ("Encerrando o programa...")
      OutroCaso
         Escreva ("Opção inválida. Tente novamente.")
      FimEscolha
   Até opcao = 5
FimAlgoritmo