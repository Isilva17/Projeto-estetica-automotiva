#!/bin/bash
arquivo="estoque.txt"

menu() {
  clear
  echo "Controle de Estoque"
  echo "--------------------"
  echo "1 - Adicionar Produto"
  echo "2 - Ver Estoque"
  echo "3 - Remover Produto"
  echo "0 - Sair"
  echo "Escolha uma opção:"
  read opcao

  case $opcao in
    1)
      echo "Nome do Produto:"
      read produto
      echo "Quantidade:"
      read quantidade
      echo "$produto - $quantidade unidades" >> $arquivo
      echo "Produto adicionado!"
      ;;
    2)
      echo "Estoque Atual:"
      echo "----------------"
      if [ -f $arquivo ]; then
        cat $arquivo
      else
        echo "Estoque vazio."
      fi
      ;;
    3)
      echo "Nome do produto para remover (busca por nome):"
      read nome
      grep -v "$nome" $arquivo > temp.txt && mv temp.txt $arquivo
      echo "Produto removido (se existia)."
      ;;
    0)
      exit
      ;;
    *)
      echo "Opção inválida!"
      ;;
  esac
}

while true; do
  menu
  echo ""
  read -p "Pressione Enter para continuar..." pausa
done