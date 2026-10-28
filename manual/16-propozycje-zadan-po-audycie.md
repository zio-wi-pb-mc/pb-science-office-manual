# Stan projektu i dalsze prace

**Stan na 28.10.2026**  
**Cel tej strony:** wskazać aktualny stan projektu, priorytety produktowe i proponowany podział pracy po zmianach w składzie grup.  
**Źródło prawdy:** aktualne GitHub Issues, Pull Requests i GitHub Project mają pierwszeństwo przed tą stroną.

!!! important "Najważniejsza zmiana"
    Projekt wychodzi z fazy szerokiego Discovery. Kolejne zadania powinny przede wszystkim prowadzić do **działającego kodu, testów, integracji, migracji danych albo usunięcia konkretnej blokady MVP**.

    Zespoły A–F są sposobem organizacji pracy, a nie sztywnymi silosami. Jeśli w jednym obszarze brakuje ludzi, a w innym są wolne moce, **przesuwamy osoby tam, gdzie najbardziej pomagają dowieźć produkt**.

## Gdzie jest źródło prawdy

1. **`dev` — bieżący zintegrowany stan projektu.** Zwykłe branche tworzymy od `dev`, a zwykłe PR-y kierujemy do `dev`.
2. **Otwarte PR-y — praca jeszcze niezintegrowana.** Przed rozpoczęciem zadania trzeba sprawdzić, czy ktoś już nie robi tego samego.
3. **`main` — ostatnie stabilne wydanie.** Nie musi zawierać każdej najnowszej zmiany z `dev`.
4. **GitHub Pages — kierunek pracy i reguły organizacyjne.** Nie zastępuje aktualnych Issues/PR.

Do `main` trafia okresowo sprawdzony stan `dev` przez Release PR. Finalny merge Release PR wykonuje prowadzący.

# Co zmieniło się od 22.10

W ostatnich dniach projekt przesunął się wyraźnie w stronę implementacji:

- **F4 / budżet (#93)** został scalony do `dev`,
- **statusy i przejścia (#117)** zostały scalone,
- **role i uprawnienia E1 (#123)** zostały scalone,
- **schemat legacy w PostgreSQL (#164)** został scalony wraz z eksperymentalną weryfikacją relacji/FK,
- scalono techniczne usprawnienia środowiska: **walidację `.env` (#176)** i **readiness endpoint PostgreSQL (#178)**,
- **F2 (#180)** ma już implementację logowania testowego i ról, ale wymaga poprawienia CI,
- **dostęp do projektów (#174)** jest rozwijany jako draft,
- **#157** jest już Ready for review i ma rozbudowane testy środowiska, ale wymaga finalnego clean-clone review i synchronizacji z aktualnym `dev`,
- **#90** pozostaje kandydatem na pierwszy stabilny release `dev → main`.

To oznacza, że nie potrzebujemy już kolejnej rundy szerokich dokumentów Discovery. Potrzebujemy spójnego produktu.

# Najbliższy checkpoint

Kolejność techniczna pozostaje:

1. domknąć **#157 — stabilne środowisko / clean clone**,
2. scalić #157 do `dev`,
3. powtórzyć CI i clean-clone na aktualnym `dev`,
4. finalnie zweryfikować **#90 — release `dev → main`**,
5. wydać pierwszy stabilny checkpoint do `main`.

Równolegle rozwijamy właściwy produkt — nie czekamy z implementacją F2/F3/F4 na release.

# Najbliższy cel produktu

Najważniejszy wspólny rezultat:

`logowanie testowe → lista projektów → szczegóły projektu → budżet`

Ma działać:

- w jednej aplikacji,
- po czystym klonie,
- na danych syntetycznych,
- z PostgreSQL,
- z testami automatycznymi,
- bez ręcznego poprawiania konfiguracji.

Dopiero po tym dokładamy pierwszy mały formularz/proces.

# Aktualny skład zespołów

Po zmianach organizacyjnych pracujemy dalej tylko z aktywnymi uczestnikami.

## PS1

### A — obecny system i dane
Lead: **Daniel Perkowski**

- Jakub Mirończuk
- Daniel Perkowski
- Aleksandra Masiejczyk

**Liczebność: 3**

### B — procesy, formularze i wymagania
Lead: **Karina Chilkiewicz**

- Patrycja Choćko
- Karina Chilkiewicz
- Bartłomiej Karanowski
- Klaudia Natalia Klim
- Gabriel Chomiczewski

**Liczebność: 5**

### C — Core i środowisko techniczne
Lead: **Vladislav Matveev**

- Mykola Nishchymnyi
- Vladislav Matveev
- Weronika Sosnowska
- Nazar Hrinchenko
- Maciej Sawicki

**Liczebność: 5**

## PS2

### D — legacy, baza i migracja
Lead: **Tomasz Sidoruk**

- Miłosz Dubowski
- Tomasz Sidoruk

**Liczebność: 2**

### E — role, workflow i wymagania użytkowników
Lead: **Michał Borawski**

- Emilia Drewnowska
- Cezary Babik
- Michał Borawski

**Liczebność: 3**

### F — pierwszy vertical slice / implementacja
Lead: **Paweł Kozikowski**

- Jakub Pawlak
- Patryk Bura
- Łukasz Bondar
- Paweł Kozikowski

**Liczebność: 4**

# Proponowane wyrównanie obciążenia

!!! note "To jest propozycja organizacyjna"
    Poniższe przesunięcia mają służyć produktowi. Nie zmieniają autorstwa już wykonanych zadań i nie wymagają porzucania rozpoczętego PR w połowie.

## PS2 — rekomendowane przesunięcie po #157/#90

Największa nierównowaga jest w PS2:

- D = 2 osoby,
- E = 3 osoby,
- F = 4 osoby.

Po domknięciu stabilizacji środowiska **proponowane jest przesunięcie Jakuba Pawlaka (F1) do zespołu D**.

Uzasadnienie:

- funkcja F1 (skeleton/środowisko) po #157 i #90 przestaje wymagać osobnego właściciela w F,
- środowisko techniczne przejmuje dalej C,
- D ma obecnie tylko dwie osoby, a przed nim realna praca implementacyjna: migracja, importer, testy danych i zgodność PostgreSQL,
- F po zmianie pozostaje bardzo naturalnym zespołem 3-osobowym:
  - F2 — Patryk Bura,
  - F3 — Łukasz Bondar,
  - F4/integracja — Paweł Kozikowski.

**Docelowo PS2: D=3, E=3, F=3.**

## PS1 — możliwe przesunięcie B → A

PS1 ma obecnie:

- A = 3 osoby,
- B = 5 osób,
- C = 5 osób.

Nie ma tu krytycznego problemu, ale dalsze czyste Discovery B jest coraz mniej potrzebne.

**Propozycja:** po zakończeniu bieżących zadań jedna osoba z B może przejść do A i pracować nad:

- fixtures dla finansów,
- przypadkami referencyjnymi,
- testami F3/F4,
- przygotowaniem syntetycznych danych do testów zgodności.

Nie ma potrzeby wykonywać tego przesunięcia natychmiast. Najpierw należy domknąć aktualne PR-y. Konkretna osoba może zostać wybrana na podstawie bieżącego obciążenia.

**Potencjalny układ docelowy PS1: A=4, B=4, C=5.**

# Jak rozkładamy teraz pracę

Poniższe punkty są **propozycjami dalszej pracy**, a nie automatycznie zatwierdzonymi wymaganiami biznesowymi.

## A — system legacy i reguły biznesowe

A powinno teraz przede wszystkim przekładać wiedzę legacy na dane i testy.

### Bieżące

- #99 — rezerwacja vs wydatek,
- #136 — przypadki referencyjne rezerwy,
- #163 — słownik finansowy wymaga jeszcze korekty relacji.

### Proponowany kierunek

- syntetyczne przypadki `wejście → oczekiwany wynik`,
- fixtures do testów finansowych,
- wsparcie F4 i testów agregacji,
- wsparcie D w danych migracyjnych.

**Nie otwieramy kolejnego szerokiego audytu finansów, jeśli nie ma konkretnego odbiorcy.**

## B — wymagania i testy akceptacyjne

B ma już dużą część Discovery za sobą. #111 jest merytorycznie zaakceptowany.

### Proponowany kierunek

B powinno przejść z dokumentów do **wykonywalnych testów i review produktu**:

- testy listy/szczegółów F3,
- testy logowania i uprawnień F2,
- review implementacji F2/F3/F4 względem zaakceptowanych wymagań,
- pierwszy mały scenariusz E2E po zintegrowaniu vertical slice.

**Rezultat kolejnego zadania B powinien być widoczny w CI albo działającym scenariuszu, nie tylko w Markdown.**

## C — Core, CI i integracja

C ma obecnie duże znaczenie, dlatego nie zmniejszamy zespołu.

### Bieżące

- #157 — finalne clean-clone review i merge,
- #90 — przygotowanie pierwszego release,
- utrzymanie `.env`, Docker, PostgreSQL, readiness i CI.

### Po release

C powinno:
- usuwać problemy techniczne blokujące kilka zespołów,
- pomagać integrować F2/F3/F4,
- utrzymywać pipeline i środowisko,
- nie tworzyć kolejnego skeletonu ani równoległego frameworka.

## D — baza i migracja

D jest obecnie najmniejszym zespołem, dlatego powinno dostać dodatkową osobę po #157/#90.

### Stan

- #164 — schemat legacy w PostgreSQL został scalony,
- #132 — plan testów zgodności jest blisko domknięcia.

### Proponowane następne zadania

1. wykorzystać schemat #164 do testów importu,
2. przygotować mały importer danych syntetycznych legacy → model nowego systemu,
3. testować przypadki z osieroconymi relacjami wykrytymi podczas #164,
4. przekuć wybrane scenariusze #132 w wykonywalne testy,
5. po ustabilizowaniu F3 przygotować migrację przykładowych projektów.

Nie migrujemy jeszcze całej produkcyjnej bazy.

## E — role, workflow i dostęp

E ma już scalone podstawowe ustalenia:

- #117 — statusy i przejścia,
- #123 — role i uprawnienia.

### Bieżące

- #173 / PR #174 — dostęp do projektów i testy uprawnień.

### Proponowany kierunek

- doprowadzić kontrolę dostępu do działających testów,
- zsynchronizować z F2 (#180),
- dopiero potem rozszerzać workflow,
- nie projektować jeszcze pełnych uprawnień wszystkich przyszłych modułów.

## F — pierwszy vertical slice

F ma już realny kod produktu.

### Stan

- F4 / budżet (#93) — **scalone do `dev`**,
- F2 / logowanie (#180) — implementacja jest, ale CI wymaga poprawki,
- F3 (#112) — nadal rozwijane,
- #155 — integracja F3 z F4,
- #157 — końcowa stabilizacja środowiska.

### Priorytet

1. naprawić CI F2 (#180),
2. domknąć F3,
3. połączyć F3 z już scalonym F4,
4. połączyć to z F2,
5. zrobić jeden demonstrator od logowania do budżetu.

Po #157/#90 Jakub Pawlak może przejść do D, a F pozostaje zespołem skupionym na F2/F3/F4.

# Gdzie kierować wolne osoby

Jeżeli ktoś kończy bieżące zadanie, kolejność priorytetów jest następująca:

1. **F2/F3/F4 — integracja vertical slice,**
2. **testy automatyczne vertical slice,**
3. **D — importer i testy migracji,**
4. **E — kontrola dostępu do projektów,**
5. **C — blokery CI/Docker/release.**

Nowy dokument Discovery jest niżej na liście, chyba że konkretny kod jest bez niego zablokowany.

# Kiedy tworzyć nowe Issue

Nowe Issue powinno mieć:

```text
Cel:
Odbiorca / zależność:
Co konkretnie powstanie:
Jak to sprawdzimy:
Źródło / podstawa:
Poza zakresem:
```

Jeżeli rezultatem ma być dokument, trzeba dodatkowo wskazać **jaki kod, test albo decyzja implementacyjna są przez jego brak zablokowane**.

# Handoff między zespołami

Raz w tygodniu wystarczy:

```text
### Przekazanie
- Co rzeczywiście powstało:
- Kto może teraz tego użyć:
- Co blokuje produkt:
- Proponowany następny krok:
```

Ostatni punkt jest propozycją do czasu utworzenia/uzgodnienia konkretnego Issue.

# Kamienie milowe

| Termin | Oczekiwany stan produktu |
|---|---|
| koniec października | #157 domknięte, pierwszy release `dev → main`, F2/F3/F4 na wspólnej bazie |
| połowa listopada | działa `logowanie → lista → szczegóły → budżet` |
| koniec listopada | podstawowe uprawnienia + pierwszy mały formularz/proces + testy |
| początek grudnia | feature freeze MVP; dalej stabilizacja, UX, testy i dokumentacja |

# Czego teraz nie robić

- nie tworzyć drugiego skeletonu,
- nie powtarzać analizy legacy bez konkretnego odbiorcy,
- nie projektować pełnego workflow całego systemu przed pierwszym działającym procesem,
- nie czekać z implementacją na zakończenie wszystkich dokumentów,
- nie rozpoczynać zwykłej pracy od `main`,
- nie utrzymywać sztucznie równych zespołów kosztem produktu.

# Ograniczenia

Materiały legacy pozostają materiałami dydaktycznymi o ograniczonym dostępie. W publicznych Issues/PR wolno publikować wnioski, nazwy plików/funkcji/tabel i dane syntetyczne, ale nie dane osobowe, sekrety ani dump bazy.

## Historia aktualizacji

- **28.10.2026** — zaktualizowano stan implementacji, skład aktywnych zespołów i propozycję wyrównania obciążenia po zmianach organizacyjnych; uwzględniono m.in. merge #93, #117, #123, #164, #176 i #178.
- **22.10.2026** — przesunięto nacisk z kolejnego Discovery na implementację, testy i integrację; wyjaśniono rolę `dev` i `main`.
- **15.10.2026** — doprecyzowano dalszą pracę A–F po pierwszym audycie.
- **14.10.2026** — utworzono podsumowanie stanu A–F.
