#!/bin/bash
# Bash Menu Script Example

PS3='Pasirinkite veiksmą: '
options=("Ieškoti" "Pridėti" "Pakeisti" "Pašalinti" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Ieškoti")
            echo "Pasirinkote paiešką. Įveskite paieškos žodį: "
	    read zod
	    grep -i $zod meniu.txt
            ;;
        "Pridėti")
            echo "Pridėkite žmogų: vardas, pavardė, miestas atskirti dvitaškiais:"
	    read zmo
	    echo $zmo >> meniu.txt
	       ;;
	       
        "Pakeisti")
            echo "Pasirinkote įrašo redagavimą. Ieškokite, ką norite pakeisti:"
	    read paie
	    cat -n meniu.txt | grep -i $paie
	    echo "Pasirinkite numerį eilutės, kurią norite pakeisti:"
	    read eil
	    eil2=`cat meniu.txt | head -$eil | tail -1`
	    echo "Įveskite naujus žmogaus duomenis: vardas, pavardė, miestas atskirti dvitaškiais:"
	    read zmo
	    sed -i 's/'$eil2'/'$zmo'/' meniu.txt
	    ;;
	"Pašalinti")
	    echo "Pasirinkote įrašo pašalinimą. Ieškokite, ką norite pašalinti:"
	    read paie
	    cat -n meniu.txt | grep -i $paie
	    echo "Pasirinkite numerį eilutės, kurią norite pašalinti:"
	    read eil
	    eil2=`cat meniu.txt | head -$eil | tail -1`
	    grep -v $eil2 meniu.txt > meniulaik.txt && mv meniulaik.txt meniu.txt
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
