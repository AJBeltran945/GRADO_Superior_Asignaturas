#!/bin/bash

puntuacion=0

while true; do
    echo "Quin tipus de dau vols tirar?"
    echo "a. Dau de 6 cares"
    echo "b. Dau de 8 cares"
    echo "c. Dau de 10 cares"
    echo "Introdueix l'opció (a/b/c) o 's' per acabar: "
    read opcion
    sleep 1

    if [ "$opcion" == "a" ]; then
        cares=6
    elif [ "$opcion" == "b" ]; then
        cares=8
    elif [ "$opcion" == "c" ]; then
        cares=10
    elif [ "$opcion" == "sortir" ]; then
        echo "Puntuació final: $puntuacion"
        exit 0
    else
        echo "Opció no vàlida. Torna a intentar."
        sleep 1
        continue
    fi

    echo -n "Vols fer una tirada? (s/n): "
    read resposta
    sleep 1

    if [ "$resposta" == "n" ]; then
        echo "Puntuació final: $puntuacion"
        exit 0
    elif [ "$resposta" == "s" ]; then
        tirada=$((1 + RANDOM % $cares))
        echo "Resultat de la tirada: $tirada"
        puntuacion=$((puntuacion + tirada))

        if [ $tirada -eq 1 ]; then
            echo "Has tret un 1! Joc acabat. Puntuació final: $puntuacion"
            exit 0
        fi
    else
        echo "Opció no vàlida. Torna a intentar."
        sleep 1
        continue
    fi

    echo "Puntuació acumulada: $puntuacion"
    sleep 1

    echo -n "Vols fer una nova tirada? (s/n): "
    read resposta
    sleep 1

    if [ "$resposta" == "n" ]; then
        echo "Puntuació final: $puntuacion"
        exit 0
    elif [ "$resposta" == "s" ]; then
        continue
    else
        echo "Opció no vàlida. Torna a intentar."
        sleep 1
        exit 1
    fi
done
