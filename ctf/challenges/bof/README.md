# Challenge: bof (Buffer Overflow)

## Açıklama
`gets()` kullanan basit bir C programı. `flag()` fonksiyonunu çağırmak için stack üzerinden dönüş adresini overwrite etmelisin.

## Ders İlişkisi
%40 oranında şu derslerle alakalıdır:
- Aşama 1: C Programlama ve Bellek Yönetimi (pointer aritmetiği, stack, buffer overflow)
- Aşama 2: x86/x64 Assembly ve Mimari (call/ret, stack frame, EIP/RIP)

## Kurulum ve Çalıştırma
```bash
gcc -fno-stack-protector -z execstack -no-pie -o bof bof.c
./bof
```

## İpucu
`flag()` fonksiyonunun adresini bulmak için:
```bash
nm bof | grep flag
# veya
objdump -d bof | grep flag
```

`buf` 64 bayt, ardından saved RBP (8 bayt) gelir, sonra dönüş adresi (8 bayt) gelir.
Toplam offset: 64 + 8 = 72 bayt.