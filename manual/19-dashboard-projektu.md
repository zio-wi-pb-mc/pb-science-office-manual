# Dashboard projektu i leaderboard

Ta strona zbiera najważniejsze miejsca do codziennej pracy nad projektem.

## GitHub Project — główna tablica pracy

[**Otwórz GitHub Project — ZIO 2026 / PB Science Office**](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1)

GitHub Project jest podstawowym widokiem bieżącej pracy:

- `BACKLOG`,
- `READY`,
- `IN PROGRESS`,
- `REVIEW`,
- `TEST`,
- `BLOCKED`,
- `DONE`.

Przed rozpoczęciem nowego zadania sprawdź tablicę, Issues i otwarte Pull Requesty. Nie tworzymy równoległego Issue, jeżeli ktoś już pracuje nad tym samym problemem.

!!! note "Dostęp"
    GitHub Project i prywatne repozytorium wymagają zalogowanego konta GitHub z dostępem do organizacji `zio-wi-pb-mc`.

## Contribution Leaderboard

[**Otwórz aktualny Leaderboard — Issue #86**](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86)

Leaderboard jest **narzędziem motywacyjnym i informacyjnym**, a nie automatyczną oceną z przedmiotu.

Aktualny ranking i bieżące naliczenia są prowadzone w Issue #86, ponieważ tam można aktualizować dane bez publikowania nowej wersji manuala.

### Zasady punktacji

| Wkład | Punkty |
|---|---:|
| Zadanie S — rozmiar domyślny | 2 |
| Zadanie M — po zatwierdzeniu | 5 |
| Zadanie L — po zatwierdzeniu przez prowadzącego | 8 |
| Merytoryczne peer review | +1 |

Dodatkowe zasady:

- M zatwierdza lead; lead nie zatwierdza własnego M,
- L zatwierdza prowadzący,
- zatwierdzenie M/L powinno nastąpić **przed mergem**,
- zadanie bez zatwierdzonego M/L liczy się jako S,
- review liczy się tylko wtedy, gdy jest rzeczywistą merytoryczną weryfikacją,
- maksymalnie 3 pkt za review na tydzień.

### Co daje punkty

Punkty za zadanie naliczamy, gdy:

1. istnieje konkretne Issue,
2. zadanie ma jednego głównego właściciela,
3. powiązany PR został scalony do `dev` lub — dla Release PR — do `main`,
4. praca przeszła peer review,
5. rezultat rzeczywiście realizuje zakres Issue.

### Czego nie punktujemy

Nie punktujemy samej:

- liczby commitów,
- liczby zmienionych linii,
- liczby utworzonych Issues/PR,
- kosmetycznego rozbijania pracy,
- powierzchownych review,
- dokumentów Discovery bez konkretnej potrzeby produktu.

W obecnej fazie szczególnie wartościowe są zadania kończące się:

- działającym kodem,
- testem automatycznym,
- integracją,
- importerem/migracją,
- usunięciem blokady CI/Docker,
- sprawdzonym vertical slice.

## Najważniejsze skróty

- [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1)
- [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues)
- [Pull Requests](https://github.com/zio-wi-pb-mc/pb-science-office/pulls)
- [Contribution Leaderboard #86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86)
- [Stan projektu i priorytety](16-propozycje-zadan-po-audycie.md)
- [Bank możliwych zadań MVP](17-bank-zadan-mvp.md)

!!! important "Źródło prawdy"
    Dla statusu pracy źródłem prawdy są GitHub Project, Issues i Pull Requests. GitHub Pages opisuje sposób pracy i aktualne priorytety.
