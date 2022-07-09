Algoritmo "Projeto NEXT TRAVEL RecodePRO"

var
login,senha,opmenu,menuclient,nome,nomeusu,senhausu,menudest,destino: caracter
cposicao,dposicao:inteiro
logado : logico
list,i,a:inteiro
cadastroc:vetor[1..5,1..3] de caractere
cadastrodt:vetor[1..5,1..1] de caractere

procedimento menuOpcao()
inicio
escreval("---== Escolha uma opção ==---")
        escreval("-------------------------------------------------------------")
        escreval("1 - Menu clientes.")
        escreval("2 - Menu destinos.")
        escreval("-------------------------------------------------------------")
        escreva("opção: ")
        leia(opmenu)
        escolha(opmenu)

        caso "1"

        menuClientes

        caso "2"

        menuDestinos

        fimescolha
        
fimprocedimento

procedimento menuClientes ()

inicio
escreval("---== Cadastro de Clientes ==---")
        escreval("*************************************************************")
        escreval("*      Escolha uma opção                                    *")
        escreval("*  1 - Listar Clientes.                                     *")
        escreval("*  2 - Cadastrar clientes.                                  *")
        escreval("*  3 - excluir cliente.                                     *")
        escreval("*  4 - Volta.                                               *")
        escreval("*  5 - Sair.                                                *")
        escreval("*************************************************************")
        escreva("opção: ")
        leia(menuclient)
        escolha(menuclient)

        //Lista de Clientes
        caso "1"

        para i de 1 ate 5 faca
             para list de 1 ate 3 faca
                  escreva(cadastroc[i,list],"/")
             fimpara
             escreval
             escreval("---------------")
        fimpara
                     escreval()
                     menuClientes
                 //Cadastro de clientes
        caso "2"
        escreval("Cadastro de Clientes")
        escreva("Digite seu nome: ")
        leia(nome)
        escreva("Digite o nome de usuario: ")
        leia(nomeusu)
        escreva("Digite sua senha: ")
        leia(senhausu)
        escreval("Cadastro Feito com Sucesso")
        //fim cadastro de cliente
        escreval("")
              para i de 1 ate 5 faca
                   se (cadastroc[i,1] = "") e (cadastroc[i,2] = "") e (cadastroc[i,3] = "")  então
                        cadastroc[i,1] <- nome
                        cadastroc[i,2] <- nomeusu
                        cadastroc[i,3] <- senhausu
                        interrompa
                   fimse
              fimpara
              menuClientes
                      //Excluir Clientes
        caso "3"
             escreva("Qual a posição do cliente: ")
             leia(cposicao)
             cadastroc[cposicao,1] <- ""
             cadastroc[cposicao,2] <- ""
             cadastroc[cposicao,3] <- ""
             menuClientes
                  //Voltar
        caso "4"
             menuOpcao
        caso "5"
             logado<-falso
        fimescolha
        
fimprocedimento

procedimento menuDestinos()

inicio
escreval("---== Cadastro de Destinos ==---")
        escreval("*************************************************************")
        escreval("*      Escolha uma opção                                    *")
        escreval("*  1 - Listar Destinos.                                     *")
        escreval("*  2 - Cadastrar.                                           *")
        escreval("*  3 - Excluir.                                             *")
        escreval("*  4 - Volta.                                               *")
        escreval("*  5 - Sair.                                                *")
        escreval("*************************************************************")
        escreva("opção: ")
        leia(menudest)
        escolha(menudest)
        //Lista de Destinos
        caso "1"

        para a de 1 ate 5 faca
             para list de 1 ate 1 faca
                  escreva("/",cadastrodt[a,list],"/")
             fimpara
             escreval
             escreval("---------------")
        fimpara
                     escreval()
                     menuDestinos
                 //Cadastro de Destinos
        caso "2"
        escreval("Cadastro de Destinos")
        escreva("Digite o destino: ")
        leia(destino)
        escreval("Cadastro Feito com Sucesso")
        //Fim Cadastro de Destinos
        escreval("")
              para a de 1 ate 5 faca
                   se (cadastrodt[a,1] = "")  então
                        cadastrodt[a,1] <- destino
                        interrompa
                   fimse
              fimpara
              menuDestinos
                      //Excluir destinos
        caso "3"
             escreva("Qual a posição do Destino: ")
             leia(dposicao)
             cadastrodt[dposicao] <- ""
             menuDestinos
                  //Sair
        caso "4"
             menuOpcao
        caso "5"
             logado<-falso
        fimescolha
fimprocedimento

inicio

                                //aqui é onde vai se feito o login
        logado<- falso
        repita
        escreval("                          Area de Usuario")
        escreva("Login: ")
        leia(login)
        escreva ("Senha: ")
        leia(senha)
        se( login = "admin" ) e ( senha = "123" ) então
        logado <- verdadeiro
        escreval("                          Usuario Logado")
        senao
        logado <- falso
        limpatela
        escreval("                          Usuario ou Senha errado")
        fimse
        
        ate logado = verdadeiro

        cadastroc[1,1]<-"Denis"
        cadastroc[1,2]<-"admin"
        cadastroc[1,3]<-"123"
        cadastroc[2,1]<-"Joao"
        cadastroc[2,2]<-"jhon"
        cadastroc[2,3]<-"1234"
        cadastroc[3,1]<-"Carlos"
        cadastroc[3,2]<-"car"
        cadastroc[3,3]<-"12345"
        
        cadastrodt[1,1]<-"Brasil"
        cadastrodt[2,1]<-"France"
        cadastrodt[3,1]<-"Greece"

                                     //menu de opçoes

        se logado = verdadeiro então

        menuOpcao
        
        fimse

fimalgoritmo