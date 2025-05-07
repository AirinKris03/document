#!/bin/bash

# menu kalkulator sederhana
while true; do
    clear
    echo "=== Kalkulator Sederhana ==="
    echo "1. Penjumlahan"
    echo "2. Pengurangan"
    echo "3. Perkalian"
    echo "4. Pembagian"
    echo "5. Keluar"
    echo -n "Pilih operasi yang ingin digunakan (1-5): "
    read operasi

    if [ "$operasi" -eq 5 ]; then
        echo "Terima kasih sudah menggunakan Kalkulator Sederhana."
        exit 0
    fi

    echo -n "Masukkan angka pertama: "
    read angka1
    echo -n "Masukkan angka kedua: "
    read angka2
done
