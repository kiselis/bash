#!/bin/bash
echo "Pradedame keistą skaičiavimą..."
for i in {1..10}; do
    echo "Skaičius $i"
    sleep 1
    if [ $((i % 2)) -eq 0 ]; then
        echo "Tai lyginis skaičius!"
    else
        echo "Tai nelyginis skaičius!"
    fi
    cowsay "Skaičius $i yra labai svarbus!"
    fortune | cowsay
done
echo "Baigėme keistą skaičiavimą!"

