# ZIO — projekt semestralny

Realizujemy **jeden wspólny projekt**: nowy system wspierający obsługę prac/projektów i wybranych procesów Działu Nauki PB.

**PS1 i PS2 pracują nad jednym produktem, jednym repozytorium i jednym backlogiem.**

!!! tip "Aktualny etap — implementacja i integracja MVP"
    Pierwsza szeroka faza Discovery jest zakończona. Priorytetem są teraz działający kod, testy, integracja, migracja danych i usuwanie blokad MVP.

    Zacznij od:

    1. [Stanu projektu i priorytetów](16-propozycje-zadan-po-audycie.md),
    2. [Banku możliwych zadań MVP](17-bank-zadan-mvp.md),
    3. [Środowisk MVP — Local, Demo i Shared Staging](18-srodowiska-mvp.md),
    4. [Ról i odpowiedzialności A–F](12-plan-discovery-a-f.md).

    Źródłem aktualnego stanu zadań pozostają GitHub Issues, Pull Requests i GitHub Project.

## Najbliższy wspólny cel

`logowanie → lista projektów → szczegóły projektu → budżet`

Ma działać jako jeden spójny fragment aplikacji na danych syntetycznych, z PostgreSQL i testami.

Po ustabilizowaniu tego przepływu dokładamy pierwszy mały formularz/proces.

## Jak pracujemy

- **A–F nie są silosami.** Gdy kończysz własne zadanie, możesz pomóc innemu obszarowi, jeśli przyspiesza to MVP.
- Każde zadanie ma jednego właściciela.
- Jedna osoba ma maksymalnie jedno główne zadanie `In progress`.
- Zwykłe PR trafiają do `dev`.
- `main` jest stabilnym checkpointem i dostaje zmiany przez Release PR.
- Każdy wykonuje również review lub test cudzej pracy.
- AI jest dozwolone, ale autor odpowiada za rezultat i musi go rozumieć.
- Nie tworzymy drugich, konkurencyjnych modeli, frameworków, auth, sposobów liczenia finansów ani środowisk.

## Stały rytm PS1 ↔ PS2

- **wtorek 20:00** — aktualizacja Issues/PR i zależności,
- **środa — PS2** — praca na aktualnym stanie,
- **środa po zajęciach** — krótkie przekazanie ustaleń i blokad,
- **czwartek — PS1** — kontynuacja na aktualnym stanie.

Wynik jednej grupy jest wejściem do pracy drugiej.
