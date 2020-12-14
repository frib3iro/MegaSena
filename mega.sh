#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script : teste.sh
# Descrição :
# Versão : 0.1
# Autor : Fabio Junior Ribeiro <rib3iro@live.com>
# Data : 28/11/2020
# Licença : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso :
#----------------------------------------------------------------------
clear
source funcoes.sh
source variaveis.sh
source automatico.sh

while [  ]
echo -e "${seta}${verde}-------------------------------------------${fim}"
echo -e "${seta}${ciano}>>> Bem vindo ao simulador de Mega Sena <<<${fim}"
echo -e "${seta}${verde}-------------------------------------------${fim}"
echo
echo -e "${seta}${ciano}[ 1 ] Jogo manual:${fim}"
echo -e "${seta}${ciano}[ 2 ] Jogo automático:${fim}"
echo -e "${seta}${ciano}[ 3 ] Sair${fim}"
echo
echo -en "${seta}${ciano}Digite sua escolha: ${fim}"
read opcao
case $opcao in
    1) JogoManual ;;
    2)  ;;
    3) exit ;;
    *) echo -e "${seta}${vermelho}Opcao desconhecida!${fim}"; echo ; exit 1 ;;
esac

# Imprimindo os números ordenados
echo
echo -e "${seta}${ciano}O seu jogo é:${fim}"
# Ordenando os numeros
BubbleSort
echo "[${array[@]}]"

