#!/bin/bash
echo "Controle de Caixa"
echo "-----------------"
echo "1 - Registrar Entrada"
echo "2 - Registrar Saída"
read opcao

if [ $opcao -eq 1 ]; then
    echo "Descrição da entrada:"
    read descricao
    echo "Valor:"
    read valor
    echo "$(date) - ENTRADA - $descricao - R$ $valor" >> caixa.txt
    echo "Entrada registrada com sucesso!"
elif [ $opcao -eq 2 ]; then
    echo "Descrição da saída:"
    read descricao
    echo "Valor:"
    read valor
    echo "$(date) - SAÍDA - $descricao - R$ $valor" >> caixa.txt
    echo "Saída registrada com sucesso!"
else
    echo "Opção inválida!"
fi