#!/bin/bash
# Tum challenge'lari derlemek icin calistirin
cd "$(dirname "$0")"

echo "[+] bof derleniyor..."
gcc -fno-stack-protector -z execstack -no-pie -o bof/bof bof/bof.c

echo "[+] rev derleniyor..."
gcc -o rev/rev rev/rev.c

echo "[+] fmt derleniyor..."
gcc -fno-stack-protector -no-pie -o fmt/fmt fmt/fmt.c

echo "[+] heap derleniyor..."
gcc -fno-stack-protector -o heap/heap heap/heap.c

echo "[+] Tamam! Tum challenge'lar hazir."