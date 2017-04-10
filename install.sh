#!/bin/bash

blue="\033[0;34m"
red="\033[0;32m"
green="\033[0;31m"


clear
while true; do
echo -e "\033[0;34m 
 ================================================================== \033[0m
\033[0;31m                   O que vamos Fazer? \033[0m

\033[0;34m 
      
      1 - Executar agora         |    0 - Sair

      2 - Instalar no PC ( Meu idioma é Português)
      3 - Instalar no PC ( Meu idioma é Inglês)
     00 - Estou usando Debian

\033[0;32m  Se você está usando o Debian use a opção 00 para configurar sua máquina. \033[0m 

\033[0;32m  Obs: se você Instalar o App no PC poderá encontra-lo no seu
       menu de aplicativos. \033[0m

\033[0;34m
 ==================================================================  \033[0m

"

echo -e "\033[0;34m Digite um número da sua opção: \033[0m
"
echo -n -e "\033[0;34m ->OPÇÃO:\033[0m "

read opcao

#verificar se foi digitada uma opcao
if [ -z $opcao ]; then
    echo "ERRO: digite uma opcao"
    exit
fi

case $opcao in
    1)
        sudo bash AppInstall.sh;;
    2)
        mkdir ~/.local/share/AppInstall &&
        sudo chmod +x AppInstall.sh &&
        cp AppInstall.sh ~/.local/share/AppInstall &&
        chmod +x AppInstall.desktop &&
        cp AppInstall.desktop ~/.local/share/applications &&
        ln -s ~/.local/share/applications/AppInstall.desktop ~/Área\ de\ Trabalho/ &&
        clear
        echo -e "\033[0;31m Agora procure por App Install no seu menu de Aplicativos nós também adicionamos um atalho no seu desktop \033[0m";;
    3)
        mkdir ~/.local/share/AppInstall &&
        sudo chmod +x AppInstall.sh &&
        cp AppInstall.sh ~/.local/share/AppInstall &&
        chmod +x AppInstall.desktop &&
        cp AppInstall.desktop ~/.local/share/applications &&
        ln -s ~/.local/share/applications/AppInstall.desktop ~/Desktop
        clear
        echo -e "\033[0;31m Agora procure por App Install no seu menu de Aplicativos nós também adicionamos um atalho no seu desktop \033[0m";;
    00)
        sudo chmod +x add-apt-repository.sh &&
        sudo mkdir /usr/sbin/add-apt-repository &&
        sudo cp add-apt-repository.sh /usr/sbin/add-apt-repository &&
        echo -e "\033[0;31m Seu Debian foi configurado com sucesso! Agora Já pode instalar o App en sua máquina. \033[0m";;   
    0)
        echo -e "\033[0;31m Saindo... \033[0m"
        exit;;
    *)
        echo
        echo -e "\033[0;31m ERRO: opção inválida \033[0m"
        echo ;;
esac
done
