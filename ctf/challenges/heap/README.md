# Challenge: heap (Heap Overflow)

## Açıklama
İki heap chunk ayrılır. İlk chunk'a 128 bayt yazılır (64 baytlık alan için), bu da ikinci chunk'ın üzerini ve `admin` değişkenini overwrite eder. `admin` 1 yapıldığında flag verilir.

## Ders İlişkisi
%40 oranında şu derslerle alakalıdır:
- Aşama 1: C Programlama ve Bellek Yönetimi (malloc/free, heap yönetimi)
- Aşama 4: Dinamik Analiz ve İleri Teknikler

## Kurulum ve Çalıştırma
```bash
gcc -fno-stack-protector -o heap heap.c
./heap
```

## İpucu
`a` 64 bayt, `b` 64 bayt. Aralarında metadata olabilir. `a`'ya uzun bir girdi vererek `b`'nin üzerini ve `admin` değişkenini değiştirebilirsin.