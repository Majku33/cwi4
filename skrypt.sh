if [[ "$1" == "--date" ]]; then
  date '+%Y-%m-%d'
fi


if [[ "$1" == "--logs" ]]; then
    for i in {1..100}
    do
        echo "Nazwa pliku: log$i.txt" >> log$i.txt
        echo "Nazwa skryptu: $0" >> log$i.txt
        echo "Data utworzenia: $(date '+%Y-%m-%d')" >> log$i.txt
    done
fi

if [[ "$1" == "--logs" && "$2" =~ ^[0-9]+$ ]]; then
  count=$2
  for ((i=1; i<=$count; i++)); do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename" >> "$filename"
    echo "Nazwa skryptu: $0" >> "$filename"
    echo "Data utworzenia: $(date '+%Y-%m-%d')" >> "$filename"
  done
else
  echo "Nieznana opcja lub brak podanej liczby plików. Użyj: --logs <liczba>"
fi

if [[ "$1" == "--help" ]]; then
    echo "Dostępne opcje:"
    echo "--date: wyświetla dzisiejszą datę"
    echo "--logs: tworzy 100 plików logx.txt, x – numer pliku od 1 – 100, w każdym pliku wpisana jest jego nazwa, nazwa skryptu i data"
    echo "--logs <liczba>: tworzy określoną liczbę plików logx.txt, z numeracją od 1 do podanej liczby, w każdym pliku wpisana jest jego nazwa, nazwa skryptu i data"
    echo "--help: wyświetla listę dostępnych opcji"
fi
