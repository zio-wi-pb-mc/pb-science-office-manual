# ZIO — projekt semestralny

Realizujemy **jeden wspólny projekt**: nowy system wspierający obsługę prac/projektów i wybranych procesów Działu Nauki PB.

**PS1 (czwartek) i PS2 (środa) pracują nad jednym produktem, jednym repozytorium i jednym backlogiem.**

!!! tip "Aktualny etap — Discovery 2.0 i integracja MVP"
    Stały podział odpowiedzialności opisuje [Plan Discovery A–F](12-plan-discovery-a-f.md). Bieżący obraz projektu, zależności między zespołami i kierunki dalszej pracy są utrzymywane na stronie [Stan projektu i kierunki dalszych prac](16-propozycje-zadan-po-audycie.md).

    Strona stanu jest **podsumowaniem komunikacyjnym**, a nie listą przydziałów. Źródłem prawdy dla wykonania pracy pozostają GitHub Issues, Pull Requests i GitHub Project.

## Stały rytm PS1 ↔ PS2

- **wtorek 20:00** — aktualizacja Issues/PR i handoff zespołów,
- **środa — PS2** — praca na aktualnym stanie po PS1,
- **środa po zajęciach** — PS2 zapisuje najważniejsze ustalenia i blockery,
- **czwartek — PS1** — praca na aktualnym stanie po PS2.

Wyniki jednej grupy są wejściem do pracy drugiej. Nie tworzymy równoległych, konkurencyjnych rozwiązań bez uzgodnienia przez Issue/ADR.

## Najważniejsze zasady

1. Każde zadanie ma jednego właściciela.
2. Jedna osoba ma maksymalnie jedno główne zadanie `In progress`.
3. Kod i dokumentacja trafiają do `main` tylko przez Release Pull Request; zwykłe PR trafiają do `dev`.
4. Każdy wykonuje również review lub test cudzej pracy.
5. Zadanie jest zakończone dopiero po spełnieniu Definition of Done.
6. AI jest dozwolone, ale autor odpowiada za rezultat i musi go rozumieć.
7. Źródłem prawdy są GitHub Issues, Pull Requests i GitHub Project.
8. Kolejne zadania powinny wynikać z faktycznych braków projektu i zależności między zespołami, a nie z gotowej listy tematów.
