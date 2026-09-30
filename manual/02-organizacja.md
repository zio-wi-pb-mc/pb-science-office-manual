# Organizacja pracy

## Struktura

- **PS1 — czwartek:** zespoły A/B/C
- **PS2 — środa:** zespoły D/E/F

Po Discovery zespoły pozostają jednostkami organizacyjnymi, ale zadania mogą być przydzielane dynamicznie ze wspólnego backlogu.

## Lead zespołu

Lead:
- zna stan prac członków zespołu,
- pilnuje, aby każdy miał konkretne Issue,
- pilnuje aktualności statusów,
- wykrywa duplikaty i zależności,
- zbiera blockery i pytania,
- publikuje handoff zespołu,
- przekazuje prowadzącemu krótki status,
- nadal wykonuje własną pracę.

## Stały rytm PS1 ↔ PS2

### Wtorek 20:00
- aktualizacja Issues i PR,
- zakończone zadania mają link do rezultatów,
- niedokończone zadania mają aktualny status i blocker,
- lead publikuje handoff.

### Środa — PS2
- PS2 zaczyna od boardu i handoffów,
- nie powtarza pracy PS1,
- korzysta z istniejących dokumentów, decyzji i kodu.

### Środa po zajęciach
- leadzi PS2 zapisują nowe ustalenia, pytania i blockery.

### Czwartek — PS1
- PS1 rozpoczyna od aktualnego stanu po PS2.

## Format handoffu

```text
## Handoff — YYYY-MM-DD

### Zakończone
- #12 — ... — PR #31

### W toku
- #14 — ... — czego brakuje

### Najważniejsze ustalenia
- ...

### Blockery / pytania
- ...

### Ważne dla kolejnej grupy
- ...
```

Handoff ma być krótki i opierać się na linkach do Issues/PR.

## Odpowiedzialność indywidualna

Ocena jest indywidualna. Każde Issue ma konkretnego właściciela.

## Wspólne mechanizmy

Dla auth, workflow, PDF/DOCX, CI, shared UI itp. wyznaczany jest owner i backup. Nie tworzymy wielu niezależnych implementacji tego samego mechanizmu.
