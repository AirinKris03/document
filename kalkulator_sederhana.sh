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
    else if ! [[ "$operasi" =~ ^[1-4]+$ ]]; then
        echo "Pilihan tidak valid."
        continue
    fi

# inputan angka untuk operasi
    echo -n "Masukkan angka pertama: "
    read angka1
    echo -n "Masukkan angka kedua: "
    read angka2

    if ! [[ "$angka1" =~ ^[0-9]+$ ]] || ! [[ "$angka2" =~ ^[0-9]+$ ]]; then
        echo "Input angka tidak valid!"
        continue    
    fi

# operasi
    case $operasi in
    1) hasil=$(( $angka1 + $angka2 ))
        echo "Hasil Penjumlahan dari $angka1 dan $angka2: $hasil";;
    2) hasil=$(( $angka1 - $angka2 ))
        echo "Hasil Pengurangan dari $angka1 dan $angka2: $hasil";;
    3) hasil=$(( $angka1 * $angka2 ))
        echo "Hasil Perkalian dari $angka1 dan $angka2: $hasil";;
    4) if [ "$angka2" -eq 0 ]; then
               echo "Error: Pembagian dengan nol tidak diperbolehkan."
           else
               hasil=$(echo "scale=2; $angka1 / $angka2" | bc)
               echo "Hasil Pembagian dari $angka1 / $angka2 = $hasil"
           fi ;;
        *) echo "Pilihan tidak valid." ;;
    esac

# validasi lanjut atau tidak
    echo -n "Apakah Anda ingin melanjutkan? (y/n): "
    read -r lanjut
    case $lanjut in
        [yY])
            continue;;
        [nN])
            echo "Terima kasih sudah menggunakan Kalkulator Sederhana."
            exit 0;;
        *)
            echo "Pilihan tidak valid.";;
    esac
done
