# Stan projektu i kierunki dalszych prac

**Stan na: 15.10.2026**  
**Charakter dokumentu:** żywe podsumowanie komunikacyjne.  
**Źródło prawdy:** GitHub Issues, Pull Requests i GitHub Project.

!!! important "Kończy się pierwsza fala Discovery, nie praca zespołów"
    Zespoły A–E nie kończą pracy po zamknięciu obecnych analiz. Projekt przechodzi do etapu **Requirements, Integration & MVP**. Kolejne zadania powinny wynikać z potrzeb działającego produktu, a nie z potrzeby tworzenia następnego dokumentu.

## Co zrobić po zakończeniu obecnego Issue

1. sprawdź bieżące Issue/PR własnego i zależnych zespołów,
2. znajdź najmniejszy brak blokujący MVP lub inny zespół,
3. zaproponuj nowe Issue z jednym właścicielem,
4. wskaż odbiorcę rezultatu,
5. zdefiniuj mierzalne acceptance criteria,
6. nie wymyślaj reguł biznesowych — użyj `UNKNOWN`, jeśli czegoś nie potwierdzono.

Wspólne ustalenia etapu 2 są również w Issue **#127** w repozytorium projektu.

## Cel czasowy

| Termin | Oczekiwany stan produktu |
|---|---|
| koniec października | krytyczne luki Discovery zamknięte; wyniki są gotowe do implementacji |
| połowa listopada | pierwszy spójny przepływ MVP działa end-to-end na danych testowych |
| koniec listopada | podstawowe uprawnienia, pierwszy formularz/workflow, dokumenty i testy są zintegrowane |
| początek grudnia | feature freeze MVP; poprawiamy błędy, integrację, testy, UX i dokumentację |

## Szybki obraz A–F

| Zespół | Teraz | Po bieżących zadaniach |
|---|---|---|
| **A** | #85, #81 / PR #99; #97 i #87 zakończone | odpowiedzi na konkretne pytania domenowe F/D, przypadki brzegowe, test cases |
| **B** | #82 / PR #110, #84 / PR #111, #126; #83 / PR #103 merged | **Requirements & Acceptance** dla F/E; user stories, acceptance criteria, review zgodności |
| **C** | stabilizacja środowiska i release #90 | Platform & Integration: CI, Docker, testy, wspólne komponenty, review techniczne |
| **D** | #114 / PR #115 zakończone | identyfikatory, ciągłość lat, jakość danych, minimalna migracja dla MVP |
| **E** | #120 / PR #123, #116 / PR #117 | minimalny kontrakt ról/uprawnień i workflow dla jednego procesu |
| **F** | #113, #112, #91 / draft PR #93 | zintegrować `login → lista → szczegóły → budżet`, potem rozszerzać ten sam vertical slice |

## A — Domain / legacy / finanse

### Bieżące

- #85 — typy prac,
- #81 / PR #99 — rezerwacja a wydatek,
- #97 / PR #121 — saldo i koszty pośrednie — zakończone,
- #87 — uczestnicy projektu — zakończone.

### Dalej

A nie wykonuje kolejnego szerokiego audytu. Następne Issue powinny odpowiadać na konkretne pytania:

- co oznacza pole potrzebne F3/F4,
- jaka reguła finansowa jest potwierdzona,
- jaki przypadek brzegowy trzeba uwzględnić,
- jaki syntetyczny przykład/test case powinien wejść do testów,
- jaka rozbieżność legacy wymaga decyzji.

**Pytanie kierujące:** czego F lub D nie może teraz zrobić bez odpowiedzi A?

## B — Requirements & Acceptance

### Bieżące

- #82 / PR #110 — raporty/eksporty,
- #84 / PR #111 — scenariusze akceptacyjne,
- #126 — rozwinięcie procesów poza legacy,
- #83 / PR #103 — mapa pól — wynik już merged.

### Dalej

B przechodzi z katalogowania do **Requirements & Acceptance**.

Następne prace powinny polegać na:

- przekładaniu potwierdzonego procesu na user stories,
- pisaniu acceptance criteria dla elementu, który F faktycznie implementuje,
- wskazywaniu wymaganych pól i walidacji,
- opisywaniu edge cases,
- wykonywaniu review implementacji pod kątem zgodności z procesem,
- doprowadzeniu jednego procesu end-to-end.

Nie tworzymy kolejnego katalogu formularzy/raportów wyłącznie po to, aby mieć zadanie.

**Najbliższy odbiorca wyników B:** F2/F3/F4 oraz E.

## C — Platform & Integration

### Bieżące

Najważniejszym zadaniem jest stabilizacja wspólnego środowiska i pierwszy release `dev → main` (#90).

### Dalej

Po release C:

- utrzymuje CI, Docker, pytest i clean-clone setup,
- usuwa problemy techniczne blokujące kilka zespołów,
- dostarcza wspólne komponenty potrzebne vertical slice,
- robi review architektury i integracji,
- pomaga F scalać rozwiązania w jeden produkt.

C nie buduje drugiego fundamentu aplikacji.

## D — Data & Migration

### Bieżące

#114 / PR #115 dało szczegółową mapę starej bazy.

### Dalej

Naturalne kolejne kierunki:

- stabilność identyfikatorów,
- lata i kontynuacje prac,
- osierocone/niespójne relacje,
- kontrola jakości danych,
- mapowanie legacy → nowy model w zakresie MVP,
- testy zgodności migracji na danych syntetycznych.

Nie robimy kolejnej mapy całej bazy.

## E — Workflow & Permissions

### Bieżące

- #120 / PR #123 — role i uprawnienia,
- #116 / PR #117 — statusy i przejścia.

### Dalej

Po E1/E2:

- minimalny kontrakt ról/uprawnień dla F2/F3,
- workflow jednego procesu referencyjnego,
- scenariusze odmowy dostępu,
- zasady przejść i edycji,
- rozdzielenie faktów legacy od projektu nowego systemu.

Nie projektujemy całego systemu workflow naraz.

## F — Vertical Slice

### Bieżące

- #113 — użytkownik/rola i logowanie testowe,
- #112 — lista i szczegóły projektu,
- #91 / draft PR #93 — budżet.

### Najbliższy wspólny cel

Połączyć:

`logowanie testowe → lista prac → szczegóły pracy → budżet`

Kolejny krok powinien rozszerzać ten sam przepływ o pierwszy formularz lub workflow, gdy B/E dostarczą minimalne wymagania.

F nie czeka na zakończenie całego Discovery.

## Kiedy tworzyć nowe Issue

Nowe Issue ma sens, gdy:

- rozwiązuje konkretny brak,
- wiadomo, kto wykorzysta wynik,
- nie dubluje aktywnego Issue/PR,
- rezultat można zweryfikować,
- zakres pozwala zrobić rzeczywisty postęp w około tydzień.

Minimalny opis:

```text
Cel:
Odbiorca / zależność:
Rezultat:
Acceptance criteria:
Źródło:
```

## Handoff

Raz w tygodniu wystarczy:

```text
### Handoff
- Nowe potwierdzone fakty / wynik:
- Ważne dla innych zespołów:
- Blocker / potrzebna decyzja:
```

## Ograniczenia

Materiały legacy pozostają materiałami dydaktycznymi o ograniczonym dostępie. W publicznych Issues/PR wolno publikować wnioski, nazwy plików/funkcji/tabel i dane syntetyczne, ale nie dane osobowe, sekrety ani dump bazy.

## Historia aktualizacji

- **15.10.2026** — przejście z pierwszej fali Discovery do etapu Requirements, Integration & MVP; doprecyzowano dalszą rolę wszystkich zespołów A–F.
- **14.10.2026** — utworzono żywe podsumowanie stanu A–F.
