#!/bin/bash

# texto a ser analisado
texto="Texto para exercício de programação

O dia estava lindo, o sol brilhava no céu e as aves
cantavam. João estava sentado no parque, aproveitando
o ar fresco. De repente, viu uma menina a correr atrás
de um gato. O gato subiu a uma árvore e a menina ficou
parada, sem saber o que fazer. João levantou-se
e ajudou a menina a descer do gato.

A menina agradeceu e os dois começaram a conversar.
João e a menina ficaram amigos e passaram o resto
do dia juntos. Eles jogaram à bola,
ao esconde-esconde e ao piquenique. À noite,
despediram-se e prometeram voltar a encontrar-se."

# palavras-chave para remoção
frases_a_remover=(
    "O dia estava lindo"
    "O sol brilhava no céu"
    "As aves cantavam"
)

# substituir palavras-chave por uma linha em branco
for frase in "${frases_a_remover[@]}"; do
    texto=$(echo "$texto" | sed "s/$frase/ /g")
done

# imprimir o texto processado
echo "$texto"
