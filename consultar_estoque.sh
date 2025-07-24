#!/bin/bash

echo "Consulta de Estoque"
echo "--------------------"

if [ -f estoque.txt ]; then
  cat estoque.txt
else
  echo "Estoque vazio ou não cadastrado ainda."
fi