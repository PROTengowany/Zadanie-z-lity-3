if [ "$1" == "--date" ]; then
 date
elif [ "$1" == "--logs" ]; then
 if [ -z "$2" ]; then
   num_logs=100
 else
   num_logs=$2
 fi

 for ((i=1; i<=$num_logs; i++)); do
   filename="log$i.txt"
   echo "Nazwa pliku: $filename" >> $filename
   echo "Nazwa skryptu: skrypt1.sh" >> $filename
   date >> $filename
 done
elif [ "$1" == "--help" ]; then
 echo "Dostępne opcje:"
 echo "- skrypt1.sh --date : Wyświetla dzisiejszą datę."
 echo "- skrypt1.sh --logs : Tworzy 100 plików logx.txt z informacjami."
 echo "- skrypt1.sh --logs <liczba> : Tworzy określoną liczbę plików logx.txt z informacjami."
 echo "- skrypt1.sh --help : Wyświetla dostępne opcje."
else
 echo "Nieznana opcja. Użyj 'skrypt1.sh --help' aby uzyskać więcej informacji."
fi
