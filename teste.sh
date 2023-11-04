#!/bin/bash
texto=$(cat texto.sh)
frases=(
    "O dia estava lindo"
    "O sol brilhava no céu"
    "As aves cantavam"
)
for frase in "${frases[@]}"; do
    texto=$(echo "$texto" | sed "s/$frase/ /g")
done
echo "$texto"
