# Nandを最小素子として、各論理回路をつくる
一度作った回路はそれ以降の回路で使用してもよい

### Nand
実装は知らなくてよい
Andの否定

| a | b | out |
|-|-|-|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |
---
### Not

f(in) = Nand(in, in)

### And

if a=b then out=1 else out=0

### Or

if a=b=0 then out=0 else out=1

### Xor

if a<>b then out=1 else out=0

