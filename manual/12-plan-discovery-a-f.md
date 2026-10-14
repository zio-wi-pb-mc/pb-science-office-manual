# Plan Discovery — zespoły A–F

A–F opisują **obszary odpowiedzialności w fazie Discovery i dochodzenia do MVP**. Nie są stałym podziałem modułów na cały semestr i nie oznaczają, że każdy kolejny krok ma być z góry przydzielony przez prowadzącego.

Aktualny stan prac jest utrzymywany osobno: [Stan projektu i kierunki dalszych prac](16-propozycje-zadan-po-audycie.md).

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
- nie blokuje ważniejszej zależności między zespołami,
- prowadzi projekt w stronę działającego systemu.

Nie traktujemy dokumentacji projektu jako menu zadań do mechanicznego wybierania.

## Rytm

- **PS1 — czwartek:** A/B/C,
- **wtorek 20:00:** aktualizacja stanu, PR i najważniejszych zależności,
- **PS2 — środa:** D/E/F pracuje na aktualnych wynikach A/B/C,
- **środa po zajęciach:** krótki handoff PS2,
- **PS1 — czwartek:** kontynuacja na aktualnym stanie.

Minimalny handoff powinien odpowiadać na trzy pytania:

1. Co zostało potwierdzone lub zmienione?
2. Co jest potrzebne innemu zespołowi?
3. Co nadal blokuje dalszą pracę?

## PS1

### A — obecny system i dane

Odpowiada przede wszystkim za:

- funkcje i model pojęciowy systemu legacy,
- reguły finansowe,
- typy prac/projektów,
- rezerwacje, wydatki i saldo,
- rozbieżności wymagające potwierdzenia administratora.

**Główne wyjście dla innych:** zweryfikowane reguły biznesowe i znaczenie danych, z których korzystają C, D i F.

### B — procesy, formularze i wymagania

Odpowiada przede wszystkim za:

- proces pracy własnej i inne procesy użytkownika,
- formularze, pola i walidacje,
- raporty, eksporty i dokumenty wyjściowe,
- scenariusze i wymagania funkcjonalne.

**Główne wyjście dla innych:** potwierdzone zachowania użytkownika i scenariusze potrzebne E oraz F.

### C — Core i środowisko

Odpowiada przede wszystkim za:

- Django/PostgreSQL/Docker,
- architekturę aplikacji,
- CI i testy,
- generowanie dokumentów,
- decyzje techniczne wspólne dla wszystkich zespołów.

**Główne wyjście dla innych:** jeden wspólny, działający fundament aplikacji. C nie tworzy alternatywnego produktu obok pracy F.

## PS2

### D — legacy, baza i migracja

Odpowiada przede wszystkim za:

- strukturę starej bazy i logiczne relacje,
- identyfikatory historyczne,
- lata i kontynuacje prac,
- jakość danych,
- strategię migracji i testy zgodności.

**Główne wyjście dla innych:** potwierdzony model danych legacy i ograniczenia migracji potrzebne A, C i F.

### E — role, workflow i wymagania użytkowników

Odpowiada przede wszystkim za:

- aktorów i role,
- uprawnienia i zasięg danych,
- oddzielenie flag legacy od projektowanego workflow,
- akceptację, zwrot, odrzucenie i historię zmian,
- wymagania widoków Działu Nauki i kierownictwa.

**Główne wyjście dla innych:** uzgodnione role i przejścia potrzebne B, C oraz F.

### F — pierwszy vertical slice

F integruje wyniki innych zespołów w **jeden działający fragment nowego systemu**.

Zakres rozwija się stopniowo:

- użytkownik i logowanie testowe,
- lista projektów/prac,
- szczegóły projektu,
- pierwsze dane budżetowe,
- później kolejne elementy workflow.

F nie tworzy drugiego szkieletu aplikacji i nie wymyśla własnych reguł biznesowych. Jeśli zależność A–E nie jest jeszcze rozstrzygnięta, używa danych syntetycznych, jawnego `TODO/UNKNOWN` albo zgłasza blocker.

## Zależności między zespołami

| Wynik | Najczęstszy odbiorca |
|---|---|
| A — reguły finansowe i znaczenie danych | D, F |
| B — procesy, formularze, scenariusze | E, F |
| C — architektura, CI, testy, wspólne komponenty | wszystkie zespoły implementacyjne |
| D — model bazy, identyfikatory, migracja | A, C, F |
| E — role, uprawnienia i workflow | B, C, F |
| F — pierwszy zintegrowany przepływ | ujawnia braki i nowe pytania dla A–E |

## Kamienie milowe projektu

To są **cele produktu**, a nie indywidualne terminy oceniania studentów.

- **do końca października:** zamknięte najważniejsze luki Discovery; model danych, finanse, role i workflow są wystarczająco potwierdzone, aby nie blokować implementacji,
- **do połowy listopada:** pierwszy spójny przepływ MVP działa end-to-end na danych testowych,
- **do końca listopada:** zintegrowane podstawowe uprawnienia, formularze/dokumenty i testy kluczowych przepływów,
- **początek grudnia:** feature freeze MVP — priorytetem stają się błędy, integracja, testy, UX i dokumentacja.

Jeżeli Discovery ujawnia nowy problem, zespół nie czeka na „idealną specyfikację”. Zapisuje niewiadomą, ogranicza zakres i kontynuuje to, co można zrobić bez zgadywania.

## Po Discovery

1. zamrażamy zakres MVP,
2. klasyfikujemy pozostałe elementy jako MVP/P1/P2,
3. utrzymujemy jeden backlog,
4. zadania rozdzielamy zgodnie z potrzebą produktu i obciążeniem,
5. coraz większy nacisk przenosimy z dokumentacji na integrację działającego systemu.
