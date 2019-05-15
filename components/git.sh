#!/bin/bash

source $(dirname "$0")/colors.sh

echo -e "$green Instalando componentes necessários! $close_color" &&
sudo apt install build-essential -y &&
echo -e "$green Instalando SSH $close_color" &&
sudo apt install ssh -y &&
echo -e "$green Instalando o GIT $close_color" &&
sudo apt install git -y &&

echo -e "$green Vamos configurar o git para você! $close_color"
echo -e -n "$blue Seu usuário git: $close_color"
read git_user
echo -e -n "$blue Seu email git: $close_color"
read git_email

if [ -z $git_user ]; then
  echo -e "$red ✗ ERRO: $close_color preencha os dados corretamente!"
  exit 1;
elif [ -z $git_email ]; then
  echo -e "$red ✗ ERRO: $close_color preencha os dados corretamente!"
  exit 1;
fi

git config --global user.name "$git_user" &&
git config --global user.email "$git_email" &&

echo -e "$green Git instalado e configurado com sucesso: \n $close_color"
echo -e "$yellow Username: $close_color $git_user"
echo -e "$yellow Email: $close_color $git_email"