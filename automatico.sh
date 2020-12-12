#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script : automatico
# Descrição :
# Versão : 0.1
# Autor : Fabio Junior Ribeiro <rib3iro@live.com>
# Data : 06/12/2020
# Licença : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso :
#----------------------------------------------------------------------
clear

# Verifica se o numero existe
VerificaSeNumeroExisteAutomatico(){
    for j in "${array[@]}"; do
        while [ $numero -eq $j ]; do
            NumeroAleatorio
            VerificaSeNumeroExiste
        done
    done
}

# Gerando um jogo automático
JogoAutomatico(){
    for i in {1..6}
    do
        NumeroAleatorio
        VerificaSeNumeroExiste
        if [ $numero -lt 10 ]; then
            array+=(0${numero})
        else
            array+=(${numero})
        fi
    done
}


