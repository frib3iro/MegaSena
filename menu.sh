#!/usr/bin/env bash
#----------------------------------------------------------------------
# Script    : [menu.sh]
# Descrição :
# Versão    : 0.1
# Autor     : Fabio Junior Ribeiro <rib3iro@live.com>
# Data      : 12/12/2020
# Licença   : GNU/GPL v3.0
#----------------------------------------------------------------------
# Uso:
#----------------------------------------------------------------------
clear
source funcoes.sh
source variaveis.sh
source automatico.sh
source sorteio.sh
#----------------------------------------------------------------------

while true 
do
    echo -e "${verde} -------------------------------------------${fim}"
    echo -e "${ciano} >>> ${magenta}Bem vindo ao simulador de Mega Sena${fim} ${ciano}<<<${fim}"
    echo -e "${verde} -------------------------------------------${fim}"
    echo
    echo -e "${ciano} Digite${fim} ${magenta}[ 1 ]${fim} ${ciano}Para fazer os jogos manualmente${fim}"
    echo -e "${ciano} Digite${fim} ${magenta}[ 2 ]${fim} ${ciano}Para fazer os jogos automáticamente${fim}"
    echo -e "${ciano} Para sair tecle ${magenta}(Q)${fim}${ciano}uit${fim}"
    echo
    echo -en "${amarelo} Digite sua escolha: ${fim}"
    read opcao
    echo

    case $opcao in
        1) echo -e "${ciano} O seu jogo será gerado manualmente."; echo; JogoManual ;;
        2) echo -e "${ciano} O seu jogo foi gerado automáticamente."; echo; JogoAutomatico ;;
        "Q") echo -e "${vermelho} O simulador foi encerrado!"; exit 0 ;;
        "q") echo -e "${vermelho} Por favor, digite em caixa alta!" ;;
        * ) clear; echo -e "${vermelho} opção inválida!" ;;
    esac

    # Imprimindo os números ordenados
    echo -e "${verde} ---------------------------------------------${fim}"
    # Ordenando os numeros
    BubbleSort
    echo -e "${ciano} O seu jogo é${fim} ${magenta}>>>>>>>>${fim} [${array[@]}]"
    echo -e "${verde} ---------------------------------------------${fim}"

    # Imprimindo os números do sorteio
    SorteioJogo
    # Ordenando os numeros
    SorteioBubbleSort
    echo -e "${verde} ---------------------------------------------${fim}"
    echo -e "${ciano} O jogo sorteado é${fim} ${magenta}>>>${fim} [${sorteio[@]}]"
    echo -e "${verde} ---------------------------------------------${fim}"
    exit 0
done

