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

# Recebe a entrada do usuário
echo -e "${seta}${amarelo}Digite os numeros do seu jogo:${fim}"
while [ $cont -le 6 ]
do
    echo -en "${ciano}Digite o ${cont}° numero: ${fim}"
    read numero
    VerificaFaixaDeValor
    VerificaSeNumeroExiste
    RemoveZeros $numero
    AdicionaZero $numero
    ((cont++))
done

# Imprimindo os números ordenados
echo -e "${seta}${ciano}O seu jogo é:${fim}"
# Ordenando os numeros
BubbleSort
echo "[${array[@]}]"

