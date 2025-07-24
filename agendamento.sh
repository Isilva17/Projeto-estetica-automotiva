#!/bin/bash
echo "Agendamento de Lavagem"
echo "Nome do Cliente:"
read nome
echo "Veículo:"
read veiculo
echo "Data do Agendamento (DD/MM/AAAA):"
read data
echo "Horário (ex: 14:00):"
read hora

echo "$data às $hora - $nome - $veiculo" >> agendamentos.txt
echo "Agendamento registrado com sucesso!"