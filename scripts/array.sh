#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : teste.sh
# Descrição :
# Versão    : 0.1
# Autor     : Fabio Junior Ribeiro <rib3iro@live.com>
# Data      : 06/12/2020
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso       :
#----------------------------------------------------------------------

echo "Criando o array"
array=(1 3 5 7 8 45 66 78 90)
echo "Array criado!"
echo 

echo "imprimindo o array com"
echo ${array[@]}
echo 

echo "Total de elementos do array"
echo ${#array[@]}
echo

echo "Iniciando laco for com @"
for i in "${array[@]}"; do
    echo "imprimindo o array"
    echo $i
    echo
    echo "imprimindo o indice"
    echo ${!array[@]}
done
echo

echo "Iniciando laco for com *"
for i in "${array[*]}"; do
    echo "imprimindo o array"
    echo $i
    echo
    echo "imprimindo o indice"
    echo ${!array[*]}
done
echo

