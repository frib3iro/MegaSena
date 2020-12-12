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

# Gera um numero aleatório
NumeroAleatorio(){
    numero=($((RANDOM % 10 + 1)))
}

# Retira os zeros a esquerda do digito
RemoveZeros(){
    numero=$(echo $1 | bc)
}

# Adiciona um zero a esquerda do numero
AdicionaZero(){
    if [ $1 -lt 10 ]
    then
        array+=(0${numero})
    else
        array+=(${numero})
    fi
}

# Verifica se o numero está entre 01 e 60
VerificaFaixaDeValor(){
    while [ $numero -lt 1 ] || [ $numero -gt 60 ]
    do
        echo -e "${vermelho}O numero digitado deve estar entre [01 e 60]!${fim}"
        echo -en "${ciano}Digite o ${cont}° numero: ${fim}"
        read numero
        VerificaFaixaDeValor
    done
}

# Verifica se o numero existe
VerificaSeNumeroExiste(){
    for j in "${array[@]}"
    do
        while [ $numero -eq $j ]
        do
            echo -e "${vermelho}O numero $numero já foi digitado, escolha outro!${fim}"
            echo -en "${ciano}Digite o ${cont}° numero: ${fim}"
            read numero
            VerificaSeNumeroExiste
        done
    done
}

# Bubble Sort
BubbleSort(){
    local set
    local i
    local j
    for ((i=0; i<6; i++))
    do
        for ((j=$i; j<6; j++))
        do
            if [ ${array[$i]} -gt ${array[$j]} ]; then
                aux=${array[$i]}
                array[$i]=${array[$j]}
                array[$j]=$aux
            fi
        done
    done
}

