# Challenge: fmt (Format String)

## Açıklama
`printf(input)` çağrısıyla format string açığı olan bir program. `target` değişkenini `0x1337` yaparak flag'i almalısın.

## Ders İlişkisi
%40 oranında şu derslerle alakalıdır:
- Aşama 1: C Programlama ve Bellek Yönetimi (stack, bellek düzeni)
- Aşama 2: x86/x64 Assembly ve Mimari (calling convention, stack argümanları)

## Kurulum ve Çalıştırma
```bash
gcc -fno-stack-protector -no-pie -o fmt fmt.c
./fmt "test"
```

## İpucu
`%n` format belirteci ile belleğe yazma yapabilirsin. `target` değişkeninin adresini bul:
```bash
nm fmt | grep target
```

Stack'teki argüman konumunu deneyerek bulabilirsin: `%p.%p.%p.%p.%p`