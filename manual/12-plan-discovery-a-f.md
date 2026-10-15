# Plan Discovery — zespoły A–F

A–F opisują obszary odpowiedzialności podczas Discovery i dochodzenia do MVP. Nie są stałym podziałem modułów na cały semestr. Wraz z postępem projektu zespoły przechodzą od analizy do przygotowania wymagań, implementacji i integracji.

Aktualny stan prac jest opisany osobno: [Stan projektu i dalsze prace](16-propozycje-zadan-po-audycie.md).

## Zasada samodzielności

Student i zespół powinni samodzielnie wskazywać następne sensowne Issue na podstawie:

- braków ujawnionych przez poprzedni PR,
- zależności zgłoszonych przez inne zespoły,
- aktualnego GitHub Project,
- potrzeb wspólnego MVP.

Lead i prowadzący sprawdzają przede wszystkim, czy zadanie:

- nie dubluje istniejącego Issue/PR,
- ma konkretny rezultat i mierzalne kryteria akceptacji,
- ma rozsądny zakres,
- nie omija ważniejszej zależności między zespołami,
- prowadzi projekt w stronę działającego systemu.

Dokumentacja projektu nie jest listą tematów do mechanicznego wybierania.

## Etap 2 — od analizy do integracji MVP

Po zakończeniu pierwszej części Discovery **nie kończy się praca zespołów**. Zmienia się jej charakter:

- mniej ogólnych analiz i katalogów,
- więcej odpowiedzi na konkretne pytania potrzebne implementacji,
- więcej kryteriów akceptacji i scenariuszy testowych,
- więcej integracji,
- więcej działającego kodu i testów.

## Rytm

- **PS1 — czwartek:** A/B/C,
- **wtorek 20:00:** aktualizacja stanu, PR i najważniejszych zależności,
- **PS2 — środa:** D/E/F pracuje na aktualnych wynikach A/B/C,
- **środa po zajęciach:** krótkie przekazanie najważniejszych ustaleń,
- **PS1 — czwartek:** kontynuacja na aktualnym stanie.

Przekazanie między zespołami powinno odpowiadać na trzy pytania:

1. Co zostało potwierdzone lub zmienione?
2. Co jest potrzebne innemu zespołowi?
3. Co nadal blokuje dalszą pracę?

## PS1

### A — system legacy i reguły biznesowe

Odpowiada przede wszystkim za:

- funkcje i model pojęciowy systemu legacy,
- reguły finansowe,
- typy prac/projektów,
- rezerwacje, wydatki i saldo,
- rozbieżności wymagające potwierdzenia.

Po pierwszej części Discovery A nie wykonuje kolejnego szerokiego audytu. Odpowiada na konkretne pytania zgłaszane przez D i F: znaczenie pola, potwierdzenie reguły, przypadek brzegowy, przykład do testu albo rozbieżność w legacy.

**Główny wynik dla innych zespołów:** zweryfikowane reguły biznesowe i znaczenie danych.

### B — procesy, wymagania i kryteria akceptacji

Odpowiada przede wszystkim za:

- proces pracy własnej i inne procesy użytkownika,
- formularze, pola i walidacje,
- raporty, eksporty i dokumenty wyjściowe,
- scenariusze i wymagania funkcjonalne.

Po pierwszej części Discovery B:

- przekłada potwierdzone procesy na małe scenariusze użytkownika i kryteria akceptacji,
- przygotowuje scenariusze testowe dla elementów implementowanych przez F,
- wskazuje wymagane pola, walidacje i przypadki brzegowe,
- sprawdza w przeglądzie PR, czy implementacja odpowiada ustalonemu procesowi,
- pomaga doprowadzić jeden wybrany proces od początku do końca.

**Główny wynik dla innych zespołów:** wymagania i scenariusze, które E i F mogą bezpośrednio wykorzystać.

### C — środowisko techniczne i integracja

Odpowiada przede wszystkim za:

- Django/PostgreSQL/Docker,
- architekturę aplikacji,
- CI i testy,
- generowanie dokumentów,
- wspólne decyzje techniczne.

Po pierwszym stabilnym wydaniu C:

- utrzymuje wspólne środowisko,
- pilnuje, aby projekt dawał się uruchomić od czystego klona repozytorium,
- usuwa problemy techniczne blokujące kilka zespołów,
- wspiera F przy integracji,
- wykonuje techniczne przeglądy PR.

**Główny wynik dla innych zespołów:** jeden wspólny, stabilny fundament aplikacji.

## PS2

### D — dane legacy i migracja

Odpowiada przede wszystkim za:

- strukturę starej bazy i logiczne relacje,
- identyfikatory historyczne,
- lata i kontynuacje prac,
- jakość danych,
- przygotowanie migracji i testy zgodności.

Po przygotowaniu mapy bazy D skupia się na problemach, które rzeczywiście wpływają na nowy model lub migrację: identyfikatorach, ciągłości danych między latami, niespójnościach, minimalnym zakresie migracji i testach.

**Główny wynik dla innych zespołów:** potwierdzony model danych legacy i ograniczenia migracji.

### E — role, uprawnienia i przepływ pracy

Odpowiada przede wszystkim za:

- aktorów i role,
- uprawnienia i zasięg danych,
- oddzielenie flag legacy od stanów nowego systemu,
- akceptację, zwrot, odrzucenie i historię zmian,
- wymagania widoków Działu Nauki i kierownictwa.

Po domknięciu podstawowej macierzy ról i statusów E przygotowuje minimalny zestaw uprawnień i przejść potrzebny aktualnie implementowanemu procesowi.

**Główny wynik dla innych zespołów:** role, uprawnienia i przejścia, które można bezpośrednio implementować i testować.

### F — pierwszy spójny fragment systemu

F integruje wyniki innych zespołów w **jeden działający fragment nowego systemu**.

Najbliższy wspólny przepływ:

`logowanie testowe → lista prac → szczegóły pracy → budżet`

Kolejne zadania F powinny rozszerzać ten sam fragment o pierwszy formularz lub krok procesu, gdy B i E dostarczą minimalne wymagania.

F nie tworzy drugiego szkieletu aplikacji i nie wymyśla własnych reguł biznesowych. Jeśli czegoś jeszcze nie ustalono, używa danych syntetycznych i jawnie oznacza brakujące ustalenie.

## Zależności między zespołami

| Wynik | Najczęstszy odbiorca |
|---|---|
| A — reguły finansowe i znaczenie danych | D, F |
| B — wymagania, formularze i scenariusze | E, F |
| C — architektura, CI, testy i wspólne mechanizmy | wszystkie zespoły implementacyjne |
| D — model bazy, identyfikatory i migracja | A, C, F |
| E — role, uprawnienia i przepływ pracy | B, C, F |
| F — pierwszy zintegrowany fragment systemu | ujawnia braki i nowe pytania dla A–E |

## Kamienie milowe projektu

To są cele produktu, a nie indywidualne terminy oceniania studentów.

- **do końca października:** zamknięte najważniejsze luki w analizie; wyniki są gotowe do wykorzystania w implementacji,
- **do połowy listopada:** pierwszy spójny przepływ MVP działa od początku do końca na danych testowych,
- **do końca listopada:** podstawowe uprawnienia, pierwszy formularz/proces, dokumenty i testy są zintegrowane,
- **początek grudnia:** zamrożenie zakresu MVP — dalej skupiamy się na błędach, integracji, testach, UX i dokumentacji.

Jeżeli analiza ujawnia nowy problem, zespół nie czeka na idealną specyfikację. Zapisuje brakujące ustalenie, ogranicza zakres i kontynuuje to, co można zrobić bez zgadywania.

## Po zakończeniu bieżącego zadania

Nowe Issue powinno jasno określać:

- jaki problem rozwiązuje,
- kto wykorzysta wynik,
- co konkretnie powstanie,
- po czym poznamy, że zadanie jest zakończone,
- na jakim źródle opiera się rozwiązanie.

Jedno zadanie ma jednego właściciela.
