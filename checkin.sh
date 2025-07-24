#!/bin/bash
echo "Check-in de Clientes"
echo "Nome do Cliente:"
read nome
echo "Veículo:"
read veiculo
echo "Serviço Solicitado:"
read servico
echo "$nome - $veiculo - $servico" >> checkin.txt
echo "Check-in realizado com sucesso!"