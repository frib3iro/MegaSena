#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : [sorteio.sh]
# Descrição :
# Versão    : 0.1
# Autor     : Fabio Junior Ribeiro <rib3iro@live.com>
# Data      : 07/12/2020
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso       :
#----------------------------------------------------------------------
sorteio=()
#----------------------------------------------------------------------

# Bubble Sort
SorteioBubbleSort(){
    local i
    local j
    local=aux
    for ((i=0; i<6; i++))
    do  
        for ((j=$i; j<6; j++))
        do  
            if [ ${sorteio[$i]} -gt ${sorteio[$j]} ]
            then
                aux=${sorteio[$i]}
                sorteio[$i]=${sorteio[$j]}
                sorteio[$j]=$aux
            fi  
        done
    done
}

# Gera um numero aleatório
SorteioAleatorio(){
    numero=($((RANDOM % 60 + 1)))
}

# Adiciona um zero a esquerda do numero
SorteioAdicionaZero(){
    if [ $1 -lt 10 ]
    then
        sorteio+=(0${numero})
    else
        sorteio+=(${numero})
    fi
}

# Verifica se o numero existe
SorteioExiste(){
    for i in "${sorteio[@]}"
    do
        while [ $numero -eq $i ]
        do
            SorteioAleatorio
            SorteioExiste
        done
    done
}

# Gerando um jogo automático
SorteioJogo(){
    for i in {1..6}
    do
        SorteioAleatorio
        SorteioExiste
        SorteioAdicionaZero
    done
}

Sorteando(){
    local i
    local j
    local=aux
    #for ((i=0; i<6; i++))
    for i in "${array[@]}"
    do  
        for j in "${sorteio[@]}"
        do  
            if [ ${array[$i]} -eq ${sorteio[$j]} ]
            then
                echo -en "${G} Você obteve 1 acerto!${F}"
                aux=${sorteio[$i]}
                sorteio[$i]=${sorteio[$j]}
                sorteio[$j]=$aux
            fi  
        done
    done
}

