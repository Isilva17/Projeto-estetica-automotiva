#!/bin/bash
echo "Consulta de Agendamentos"
echo "-------------------------"

if [ -f agendamentos.txt ]; then
    cat agendamentos.txt
else
    echo "Nenhum agendamento encontrado."
fi