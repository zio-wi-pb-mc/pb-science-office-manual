# Stan projektu i dalsze prace

**Stan na 15.10.2026**  
**Cel tej strony:** krótkie podsumowanie aktualnego stanu projektu i wskazanie, co powinno wydarzyć się dalej.  
**Aktualny stan zadań:** GitHub Issues, Pull Requests i GitHub Project.

!!! important "Kończy się pierwsza część Discovery, nie praca zespołów"
    Zespoły A–E nie kończą pracy po zamknięciu obecnych analiz. Projekt przechodzi do etapu, w którym wyniki analiz mają być wykorzystywane do przygotowania wymagań, testów i wspólnego MVP.

## Co zrobić po zakończeniu obecnego Issue

1. sprawdź bieżące Issue/PR własnego i zależnych zespołów,
2. znajdź najmniejszy brak, który rzeczywiście blokuje dalszą pracę lub MVP,
3. zaproponuj nowe Issue z jednym właścicielem,
4. wskaż, kto wykorzysta wynik,
5. określ konkretny rezultat i kryteria akceptacji,
6. jeśli czegoś nie wiadomo — oznacz brakujące ustalenie zamiast wymyślać regułę biznesową.

Wspólne ustalenia są również opisane w Issue **#127** w głównym repozytorium.

## Aktualne otwarte Pull Requesty

Na moment tej aktualizacji otwartych jest **7 PR-ów**:

| Zespół | PR | Zakres |
|---|---|---|
| **A** | #99 | rezerwacja a wydatek |
| **B** | #110 | katalog raportów, eksportów i dokumentów |
| **B** | #111 | scenariusze akceptacyjne legacy |
| **C** | #90 | pierwsze stabilne wydanie `dev → main` |
| **E** | #117 | statusy i przejścia |
| **E** | #123 | role i uprawnienia |
| **F** | #93 | roboczy widok budżetu |

GitHub ma pierwszeństwo przed tą tabelą, jeśli stan PR zmieni się po dacie aktualizacji.

## Cel czasowy

| Termin | Oczekiwany stan produktu |
|---|---|
| koniec października | najważniejsze luki w analizie są zamknięte, a wyniki gotowe do wykorzystania w implementacji |
| połowa listopada | pierwszy spójny przepływ MVP działa od początku do końca na danych testowych |
| koniec listopada | podstawowe uprawnienia, pierwszy formularz/proces, dokumenty i testy są zintegrowane |
| początek grudnia | zamrożenie zakresu MVP; dalej skupiamy się na błędach, integracji, testach, UX i dokumentacji |

## Szybki obraz A–F

| Zespół | Stan | Co dalej |
|---|---|---|
| **A** | #85 i #81 / PR #99; analiza salda #97 / PR #121 zakończona | odpowiadać na konkretne pytania domenowe potrzebne D/F |
| **B** | otwarte PR #110 i #111 oraz Issue #126; większość pierwszych analiz jest już scalona | przygotowywać wymagania, kryteria akceptacji i scenariusze dla E/F |
| **C** | stabilizacja środowiska i PR #90 | po wydaniu utrzymywać wspólne środowisko i wspierać integrację |
| **D** | mapa bazy #114 / PR #115 zakończona | identyfikatory, ciągłość danych, jakość danych i minimalna migracja dla MVP |
| **E** | PR #117 i #123 | domknąć role, uprawnienia i przejścia potrzebne pierwszemu procesowi |
| **F** | #112, #113 i roboczy PR #93 | połączyć logowanie, listę, szczegóły i budżet w jeden działający fragment |

## A — system legacy i reguły biznesowe

### Bieżące

- #85 — typy prac,
- #81 / PR #99 — rezerwacja a wydatek,
- #97 / PR #121 — saldo i koszty pośrednie — zakończone,
- #87 — uczestnicy projektu — zakończone.

### Dalej

A nie wykonuje kolejnego szerokiego audytu. Następne zadania powinny odpowiadać na konkretne pytania, np.:

- co oznacza pole potrzebne F3/F4,
- jaka reguła finansowa jest potwierdzona,
- jaki przypadek brzegowy trzeba uwzględnić,
- jaki syntetyczny przypadek testowy powinien wejść do testów,
- jaka rozbieżność w legacy wymaga decyzji.

**Pytanie kierujące:** czego F lub D nie może teraz zrobić bez odpowiedzi A?

## B — wymagania i kryteria akceptacji

### Bieżące

- #82 / PR #110 — raporty i eksporty,
- #84 / PR #111 — scenariusze akceptacyjne,
- #126 — dalsze doprecyzowanie procesów poza legacy.

Wcześniejsze prace B, w tym PR #37, #39, #103, #104 i #105, zostały już scalone.

### Dalej

B przechodzi od ogólnych analiz do przygotowania wymagań potrzebnych implementacji.

Następne zadania powinny polegać na:

- opisaniu małego scenariusza użytkownika,
- przygotowaniu kryteriów akceptacji dla elementu, który F faktycznie implementuje,
- wskazaniu wymaganych pól i walidacji,
- opisaniu przypadków brzegowych,
- sprawdzeniu w przeglądzie PR, czy implementacja odpowiada ustalonemu procesowi,
- doprowadzeniu jednego procesu od początku do końca.

Nie tworzymy kolejnego katalogu formularzy lub raportów wyłącznie po to, aby mieć następne zadanie.

**Najbliżsi odbiorcy wyników B:** E i F.

## C — środowisko techniczne i integracja

### Bieżące

Najważniejszym zadaniem jest stabilizacja wspólnego środowiska i pierwsze stabilne wydanie `dev → main` (#90).

### Dalej

Po wydaniu C:

- utrzymuje CI, Docker i testy,
- pilnuje, aby projekt dawał się uruchomić od czystego klona repozytorium,
- usuwa problemy techniczne blokujące kilka zespołów,
- przygotowuje wspólne mechanizmy potrzebne implementacji,
- wykonuje techniczne przeglądy PR,
- pomaga F scalać rozwiązania w jeden produkt.

C nie buduje drugiego fundamentu aplikacji.

## D — dane legacy i migracja

### Bieżące

#114 / PR #115 dało pierwszą szczegółową mapę starej bazy.

### Dalej

Kolejne zadania powinny wynikać z potrzeb nowego modelu lub migracji, np.:

- stabilność identyfikatorów,
- lata i kontynuacje prac,
- niespójne lub osierocone relacje,
- kontrola jakości danych,
- mapowanie legacy do nowego modelu w zakresie MVP,
- testy migracji na danych syntetycznych.

Nie robimy kolejnej mapy całej bazy.

## E — role, uprawnienia i przepływ pracy

### Bieżące

- #120 / PR #123 — role i uprawnienia,
- #116 / PR #117 — statusy i przejścia.

### Dalej

Po domknięciu tych prac E:

- przygotowuje minimalny zestaw ról i uprawnień potrzebny F2/F3,
- doprecyzowuje przejścia stanów dla jednego procesu,
- przygotowuje scenariusze odmowy dostępu,
- oddziela zachowanie systemu legacy od propozycji dla nowego systemu.

Nie projektujemy od razu pełnego przepływu pracy dla wszystkich procesów.

## F — pierwszy spójny fragment systemu

### Bieżące

- #113 — użytkownik i logowanie testowe,
- #112 — lista i szczegóły projektu,
- #91 / roboczy PR #93 — budżet.

### Najbliższy wspólny cel

Połączyć:

`logowanie testowe → lista prac → szczegóły pracy → budżet`

Następny krok powinien rozszerzać ten sam fragment o pierwszy formularz lub element procesu, gdy B i E dostarczą minimalne wymagania.

F nie musi czekać na zakończenie wszystkich analiz.

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
Kryteria akceptacji:
Źródło:
```

## Przekazanie między zespołami

Raz w tygodniu wystarczy krótka informacja:

```text
### Przekazanie
- Nowe potwierdzone fakty / wynik:
- Ważne dla innych zespołów:
- Blokada / potrzebna decyzja:
```

Jeżeli PR zmienia założenie używane przez inny zespół, autor lub lead powinien wprost oznaczyć zależne Issue/PR.

## Ograniczenia

Materiały legacy pozostają materiałami dydaktycznymi o ograniczonym dostępie. W publicznych Issues/PR wolno publikować wnioski, nazwy plików/funkcji/tabel i dane syntetyczne, ale nie dane osobowe, sekrety ani dump bazy.

## Historia aktualizacji

- **15.10.2026** — doprecyzowano dalszą pracę A–F i poprawiono opis na bardziej naturalny język; uwzględniono aktualny stan 7 otwartych PR-ów.
- **14.10.2026** — utworzono podsumowanie stanu A–F.
