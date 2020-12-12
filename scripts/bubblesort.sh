#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script : teste
# Descrição :
# Versão : 0.1
# Autor : Fabio Junior Ribeiro <rib3iro@live.com>
# Data : 01/12/2020
# Licença : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso :
#----------------------------------------------------------------------
clear
array=(10 8 20 100 12) 

# Imprimindo os números antes de ordenar
echo "Array sem ordenação: "
echo ${array[@]}

# Bubble Sort
BubbleSort(){
    for ((i=0; i<5; i++)); do
        for ((j=0; j<5; j++)); do
            if [ ${array[$i]} -gt ${array[$j]} ]; then
                aux=${array[$i]}
                array[$i]=${array[$j]}
                array[$j]=$aux
            fi
        done
    done
}

# Imprimindo os números ordenados
echo "Array ordenado: "
${array[@]} 
echo ${array[@]}

