#!/bin/bash

echo "Consulta de Movimentações do Caixa"
echo "-----------------------------------"

if [ -f caixa.txt ]; then
  cat caixa.txt
else
  echo "Nenhum registro encontrado no caixa."
fi