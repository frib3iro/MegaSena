#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : [automatico.sh]
# Descrição :
# Versão    : 0.1
# Autor     : Fabio Junior Ribeiro <rib3iro@live.com>
# Data      : 06/12/2020
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso :
#----------------------------------------------------------------------
clear

# Gera um numero aleatório
NumeroAleatorioAuto(){
    numero=($((RANDOM % 60 + 1)))
}

# Adiciona um zero a esquerda do numero
AdicionaZeroAuto(){
    if [ $1 -lt 10 ]
    then
        array+=(0${numero})
    else
        array+=(${numero})
    fi
}

# Verifica se o numero existe
VerificaSeNumeroExisteAuto(){
    for i in "${array[@]}"; do
        while [ $numero -eq $i ]; do
            NumeroAleatorioAuto
            VerificaSeNumeroExisteAuto
        done
    done
}

# Gerando um jogo automático
JogoAutomatico(){
    for i in {1..6}
    do
        numero=($((RANDOM % 60 + 1)))
        VerificaSeNumeroExisteAuto $numero
        AdicionaZeroAuto $numero
    done
}

