#!/bin/bash
echo "Ordem de Serviço"
echo "Nome do Cliente:"
read nome
echo "Veículo:"
read veiculo
echo "Serviço Realizado:"
read servico
echo "Valor (R$):"
read valor
echo "Data (DD/MM/AAAA):"
read data

echo "$data - $nome - $veiculo - $servico - R$ $valor" >> ordem_servico.txt
echo "Ordem de serviço registrada com sucesso!"