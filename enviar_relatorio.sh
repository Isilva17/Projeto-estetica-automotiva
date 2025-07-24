#!/bin/bash

# Busca o PDF mais recente gerado
PDF=$(ls -t relatorio_*.pdf 2>/dev/null | head -n 1)

if [ -z "$PDF" ]; then
    echo "❌ Nenhum relatório PDF encontrado!"
    exit 1
fi

# Configurações
REMETENTE="igorgonzagaa1@gmail.com"
DESTINO="programadorsilva017@gmail.com"
ASSUNTO="📄 Relatório Diário - $(date +%d/%m/%Y)"
MENSAGEM="Olá,\n\nSegue em anexo o relatório diário gerado automaticamente pelo sistema da Estética Automotiva.\n\nAtenciosamente,\nIgor"

# Envia o e-mail com anexo
echo -e "To: $DESTINO\nFrom: $REMETENTE\nSubject: $ASSUNTO\n\n$MENSAGEM" | \
msmtp --debug --from=default -t -a default --attach="$PDF"

echo "✅ Relatório enviado com sucesso: $PDF"