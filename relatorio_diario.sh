pkg install libreoffice -y

pkg install wget -y


#!/bin/bash

DATA=$(date +%Y-%m-%d)
ARQUIVO="relatorio_$DATA.txt"
PDF="relatorio_$DATA.pdf"

echo "Relatório Diário - $DATA" > $ARQUIVO
echo "===========================" >> $ARQUIVO

echo -e "\n📌 Clientes Check-in:" >> $ARQUIVO
[ -f clientes.txt ] && cat clientes.txt >> $ARQUIVO || echo "Nenhum registro" >> $ARQUIVO

echo -e "\n🛠️ Ordens de Serviço:" >> $ARQUIVO
[ -f ordens.txt ] && cat ordens.txt >> $ARQUIVO || echo "Nenhum registro" >> $ARQUIVO

echo -e "\n🗓️ Agendamentos:" >> $ARQUIVO
[ -f agendamentos.txt ] && cat agendamentos.txt >> $ARQUIVO || echo "Nenhum registro" >> $ARQUIVO

echo -e "\n💵 Movimentações de Caixa:" >> $ARQUIVO
[ -f caixa.txt ] && cat caixa.txt >> $ARQUIVO || echo "Nenhum registro" >> $ARQUIVO

echo -e "\n📦 Estoque Atual:" >> $ARQUIVO
[ -f estoque.txt ] && cat estoque.txt >> $ARQUIVO || echo "Nenhum registro" >> $ARQUIVO

# Converte para PDF
libreoffice --headless --convert-to pdf "$ARQUIVO"

echo "✅ Relatório gerado: $PDF"