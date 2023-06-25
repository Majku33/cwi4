if [[ "$1" == "--date" ]]; then
  date '+%Y-%m-%d'
fi


if [[ "$1" == "--date" ]]; then
    for i in {1..100}
    do
        echo "Nazwa pliku: log$i.txt" >> log$i.txt
        echo "Nazwa skryptu: $0" >> log$i.txt
        echo "Data utworzenia: $(date '+%Y-%m-%d')" >> log$i.txt
    done
fi
