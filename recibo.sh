#!/bin/bash

echo "Emissão de Recibo"
echo "------------------"

read -p "Nome do Cliente: " cliente
read -p "Serviço Realizado: " servico
read -p "Valor (R$): " valor
data=$(date +%d/%m/%Y)

nome_arquivo="recibos/recibo_$(date +%Y%m%d_%H%M%S).txt"
mkdir -p recibos

echo "=========================" > $nome_arquivo
echo "       RECIBO" >>