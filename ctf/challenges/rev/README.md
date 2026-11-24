# Challenge: rev (Reverse Engineering)

## Açıklama
Derlenmiş bir binary'de gizli şifreyi bulmalı ve FLAG'i elde etmelisin.

## Ders İlişkisi
%40 oranında şu derslerle alakalıdır:
- Aşama 2: x86/x64 Assembly ve Mimari
- Aşama 3: Ghidra ile Statik Analiz

## Kurulum ve Çalıştırma
```bash
gcc -o rev rev.c
./rev
```

## İpucu
Ghidra, objdump veya strings ile binary'yi inceleyin:
```bash
strings rev
objdump -d rev | grep -A 30 '<main>'
```

XOR anahtarı ve karşılaştırma mantığını tersine çevirerek şifreyi bulabilirsiniz.