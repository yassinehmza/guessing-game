#!/usr/bin/env bash

read_integer() {
  local input
  read -r input

  if ! [[ "$input" =~ ^[0-9]+$ ]]; then
    echo "nonentier"
  else
    echo "$input"
  fi
}


target_count=$(ls -1A | wc -l)

target_count=$(echo "$target_count" | tr -d ' ')

echo "Devinez combien d'éléments (fichiers/dossiers) se trouvent dans le répertoire courant."
echo "Entrez un nombre entier :"


while true; do
  echo -n "> "
  answer=$(read_integer)

  if [ "$answer" = "nonentier" ]; then
    echo "Veuillez entrer un nombre entier (ex : 0, 1, 2...). Réessayez."
    continue
  fi

  if [ "$answer" -lt "$target_count" ]; then
    echo "Trop bas — essaye encore."
  elif [ "$answer" -gt "$target_count" ]; then
    echo "Trop haut — essaye encore."
  else
    echo "Bravo ! Nombre correct : $target_count"
    break
  fi
done

exit 0
