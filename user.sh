#!/bin/sh
echo "Koks tavo vardas?"
read username
echo "Labas, $username"
echo "Sukursiu tau failą, pavadinimu ${username}_failas"
touch "${username}_failas"

