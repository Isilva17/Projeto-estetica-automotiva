#!/bin/bash

# Instala as dependências (executar apenas uma vez no Termux)
# pkg install libreoffice -y
# pkg install wget -y

# Define data e nomes dos arquivos
DATA=$(date +%Y-%m-%d)
ARQUIVO="relatorio_$DATA.txt"
PDF="relatorio_$DATA.pdf"

# Cabeçalho do relatório
echo "Relatório Diário - $DATA" > $ARQUIVO
echo "==============================" >> $ARQUIVO

# Check-in de Clientes
echo -e "\n📌 Clientes Check-in:" >> $ARQUIVO
if [ -f clientes.txt ]; then
    cat clientes.txt >> $ARQUIVO
else
    echo "Nenhum registro" >> $ARQUIVO
fi

# Ordens de Serviço
echo -e "\n🛠️ Ordens de Serviço:" >> $ARQUIVO
if [ -f ordens.txt ]; then
    cat ordens.txt >> $ARQUIVO
else
    echo "Nenhum registro" >> $ARQUIVO
fi

# Agendamentos
echo -e "\n📅 Agendamentos:" >> $ARQUIVO
if [ -f agendamentos.txt ]; then
    cat agendamentos.txt >> $ARQUIVO
else
    echo "Nenhum registro" >> $ARQUIVO
fi

# Movimentações de Caixa
echo -e "\n💸 Movimentações de Caixa:" >> $ARQUIVO
if [ -f caixa.txt ]; then
    cat caixa.txt >> $ARQUIVO
else
    echo "Nenhum registro" >> $ARQUIVO
fi

# Estoque Atual
echo -e "\n📦 Estoque Atual:" >> $ARQUIVO
if [ -f estoque.txt ]; then
    cat estoque.txt >> $ARQUIVO
else
    echo "Nenhum registro" >> $ARQUIVO
fi

# Observações Finais (opcional)
echo -e "\n📝 Observações Finais:" >> $ARQUIVO
echo "Nenhuma observação adicionada." >> $ARQUIVO

# Converte o relatório .txt para PDF
libreoffice --headless --convert-to pdf "$ARQUIVO"

# Finaliza
echo -e "\n✅ Relatório gerado com sucesso: $PDF"