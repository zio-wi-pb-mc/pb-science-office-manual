# ZIO — projekt semestralny

Realizujemy **jeden wspólny projekt**: nowy system wspierający obsługę prac/projektów i wybranych procesów Działu Nauki PB.

**PS1 (czwartek) i PS2 (środa) pracują nad jednym produktem, jednym repozytorium i jednym backlogiem.**

!!! tip "Aktualny etap — przejście od analizy do integracji MVP"
    Pierwsza część Discovery dobiega końca. Nie oznacza to końca pracy zespołów A–E — zmienia się jej charakter.

    Stały podział odpowiedzialności opisuje [Plan Discovery A–F](12-plan-discovery-a-f.md), a bieżący stan i kierunki dalszych prac są na stronie [Stan projektu i dalsze prace](16-propozycje-zadan-po-audycie.md).

    Źródłem aktualnego stanu zadań pozostają GitHub Issues, Pull Requests i GitHub Project.

## Co dalej po Discovery

- **A** — odpowiada na konkretne pytania dotyczące systemu legacy i reguł biznesowych potrzebnych implementacji,
- **B** — przygotowuje wymagania, kryteria akceptacji i scenariusze testowe,
- **C** — utrzymuje wspólne środowisko techniczne i wspiera integrację,
- **D** — zajmuje się danymi legacy i przygotowaniem migracji,
- **E** — doprecyzowuje role, uprawnienia i przepływ pracy,
- **F** — scala wyniki pozostałych zespołów w jeden działający fragment systemu.

Po zakończeniu bieżącego Issue zespół nie czeka automatycznie na nowy przydział. Wybiera najmniejszy brak potrzebny innemu zespołowi albo MVP i proponuje kolejne Issue.

## Stały rytm PS1 ↔ PS2

- **wtorek 20:00** — aktualizacja Issues/PR i najważniejszych zależności,
- **środa — PS2** — praca na aktualnym stanie po PS1,
- **środa po zajęciach** — krótkie przekazanie najważniejszych ustaleń i blokad,
- **czwartek — PS1** — praca na aktualnym stanie po PS2.

Wyniki jednej grupy są wejściem do pracy drugiej. Nie tworzymy równoległych, konkurencyjnych rozwiązań bez uzgodnienia przez Issue lub ADR.

## Najważniejsze zasady

1. Każde zadanie ma jednego właściciela.
2. Jedna osoba ma maksymalnie jedno główne zadanie `In progress`.
3. Kod i dokumentacja trafiają do `main` tylko przez Release Pull Request; zwykłe PR trafiają do `dev`.
4. Każdy wykonuje również przegląd lub test cudzej pracy.
5. Zadanie jest zakończone dopiero po spełnieniu Definition of Done.
6. AI jest dozwolone, ale autor odpowiada za rezultat i musi go rozumieć.
7. Źródłem aktualnego stanu są GitHub Issues, Pull Requests i GitHub Project.
8. Kolejne zadania powinny wynikać z faktycznych braków projektu i zależności między zespołami, a nie z gotowej listy tematów.
