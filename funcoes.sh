#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : [funcoes.sh]
# Descrição :
# Versão    : 0.1
# Autor     : Fabio Junior Ribeiro <rib3iro@live.com>
# Data      : 28/11/2020
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso :
#----------------------------------------------------------------------

# Gera um numero aleatório
NumeroAleatorio(){
    numero=($((RANDOM % 60 + 1)))
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

# Verifica se foi digitado um numero
VerificaSeEhNumero(){
    while true 
    do
        if [[ $numero = ?(+|-)+([0-9]) ]]
        then
            break
        else
            echo -e "${vermelho} Por favor, digite apenas números inteiros!${fim}"
        fi  
    done
}

# Verifica se o numero está entre 01 e 60
VerificaFaixaDeValor(){
    while [ $numero -lt 1 ] || [ $numero -gt 60 ]
    do
        echo -e "${vermelho} O numero digitado deve estar entre [01 e 60]!${fim}"
        echo -en "${ciano} Digite o ${cont}° numero: ${fim}"
        read numero
        VerificaFaixaDeValor
        VerificaSeNumeroExiste

    done
}

# Verifica se o numero existe
VerificaSeNumeroExiste(){
    for j in "${array[@]}"
    do
        while [ $numero -eq $j ]
        do
            echo -e "${vermelho} O numero $numero já foi digitado, escolha outro!${fim}"
            echo -en "${ciano} Digite o ${cont}° numero: ${fim}"
            read numero
            VerificaSeNumeroExiste
            VerificaFaixaDeValor
        done
    done
}

# Bubble Sort
BubbleSort(){
    local i
    local j
    for ((i=0; i<6; i++))
    do
        for ((j=$i; j<6; j++))
        do
            if [ ${array[$i]} -gt ${array[$j]} ]
            then
                aux=${array[$i]}
                array[$i]=${array[$j]}
                array[$j]=$aux
            fi
        done
    done
}

# Recebe a entrada do usuário
JogoManual(){
    echo -e "${amarelo} Digite os numeros do seu jogo:${fim}"
    for cont in {1..6}
    do
        echo -en "${ciano} Digite o ${cont}° numero: ${fim}"
        read numero
        VerificaSeNumeroExiste
        VerificaFaixaDeValor
        RemoveZeros $numero
        AdicionaZero $numero
        ((cont++))
    done
}

Sorteio(){
    for i in ${array[@]}
    do
        for j in ${array[@]}
        do
            if [ ${array[i]} -eq ${array[j]} ]
            then
                echo 
            fi
        done
    done
}
