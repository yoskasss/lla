# CTF Klasörü

Bu klasör, Low Level Akademi dersleriyle %40 oranında alakalı CTF (Capture The Flag) challenge'larını içerir.

## İçerik

| Challenge | Tür | İlgili Ders |
|-----------|-----|-------------|
| `bof/` | Buffer Overflow | Aşama 1 & 2 (Bellek Yönetimi, Assembly) |
| `rev/` | Reverse Engineering | Aşama 2 & 3 (Assembly, Ghidra) |
| `fmt/` | Format String | Aşama 1 & 2 (Bellek, Stack) |
| `heap/` | Heap Overflow | Aşama 1 & 4 (Heap, Dinamik Analiz) |

## Kurulum

Tüm challenge'ları derlemek için:

```bash
cd ctf
chmod +x solve_all.sh
./solve_all.sh
```

Her challenge'ın kendi içinde `README.md` dosyası bulunur ve çözüm ipuçları içerir.

## Notlar

- Bu challenge'lar eğitim amaçlıdır.
- Sadece kendi sistemlerinizde veya izninizdeki ortamlarda çalıştırın.
- Derleme için `gcc` kurulu olmalıdır.