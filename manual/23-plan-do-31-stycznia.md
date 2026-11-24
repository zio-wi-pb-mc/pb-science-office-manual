# Plan dostawy ZIO — do 31 stycznia 2027

**Cel ZIO:** do **31 stycznia 2027 r.** aplikacja ma być **wdrożona, przetestowana i odebrana przez Dział Nauki**. Każdy zespół może wybierać własne zadania lub wspierać inne zespoły; roadmapa pokazuje najbardziej potrzebne kierunki pracy.

**Stan planu: 24.11.2026 (zaktualizowany checkpoint Demo).** Prace trwają na [`dev`](https://github.com/zio-wi-pb-mc/pb-science-office/tree/dev); do wydania w `main` decyduje prowadzący. Zapisane Issues pokazują możliwości realizacji, a nie przymusowy przydział.

## Najbliższa bramka: ograniczony pokaz Działowi Nauki

Na 24.11 `dev` nadal wskazuje `e8d94872`, a kod nowego dostępu/CRUD jest w otwartych PR-ach [#235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235) → [#237](https://github.com/zio-wi-pb-mc/pb-science-office/pull/237) → [#236](https://github.com/zio-wi-pb-mc/pb-science-office/pull/236). **Merge do `dev` wykonują sami studenci** po review i CI. E [#240](https://github.com/zio-wi-pb-mc/pb-science-office/pull/240) musi uzgodnić jeden wspólny model przypisań z F, aby uniknąć dwóch migracji tej samej funkcji. C [#246](https://github.com/zio-wi-pb-mc/pb-science-office/issues/246) sprawdzi dwa konta, odmowy cudzych HTML/JSON/budżetów, zapis i ponowny odczyt projektu w Docker Demo `DEBUG=False`, dostarczając **GO/NO-GO**.

Pokaz **przełom listopada i grudnia** jest warunkowy, wyłącznie na syntetycznych danych i służy uzgodnieniu zakresu z pracownikami Działu Nauki. Nie deklarować gotowych finansów, migracji legacy ani raportów. F01 ma ręczny PASS w [PR #239](https://github.com/zio-wi-pb-mc/pb-science-office/pull/239), ale lokalnie wykryto niestabilny test timestampów. Zadania F02 [#241–#245](https://github.com/zio-wi-pb-mc/pb-science-office/issues/241) są przydzielone; **priorytet biznesowy tego formularza nie został jeszcze zatwierdzony**.

## Praca równoległa

A i D mogą już przygotowywać przyrosty na uzgodnionym HEAD #237, C rozpocząć próbny odbiór zintegrowanej gałęzi #236, a B pomóc w niezależnym review formularzy CRUD. Zależne PR-y oznaczamy jako Draft z podanym SHA bazowym; po integracji aktualizujemy je do `dev` i ponawiamy CI. Końcowy odbiór dotyczy zintegrowanego `dev`. Zachowujemy właścicieli zadań i indywidualne rozliczenie wkładu. C równolegle przygotowuje wspólne środowisko testowe (#217); dostępność serwera uczelni pozostaje do uzgodnienia.

## Etapy prac i kryteria odbioru

| Orientacyjny okres | Etap | Sprawdzamy |
|---|---|---|
| **W najbliższych dniach** | Uzgodnienie współpracy i kontraktu | Liderzy ustalają identyfikację projektu, granice prac E/F/C, B/F, D/F i A/F oraz kto odpowiada za integrację. Zapisują obecny wynik Demo PASS/FAIL i uzgadniają kolejne prace |
| **W kolejnym tygodniu** | Pierwsze przyrosty implementacji | Małe PR-y/testy dla przypisań, modelu projektów, formularzy i finansów; próba dwóch kont oraz ustalenie braków |
| **Na przełomie listopada i grudnia** | Pierwszy pokaz i przegląd współpracy | Pokaz bezpiecznych, działających funkcji; uwagi Działu Nauki i uzgodnienie zakresu potrzebnego do odbioru; ocena współpracy między zespołami |
| **Na początku grudnia** | Projekty w PostgreSQL | Model/migracje, właściwy typ/rok/projekt, F3 i F4 bez odczytu z `SyntheticProject` |
| **W pierwszej połowie grudnia** | Operacje na projektach i F01 | Operator tworzy/edytuje projekt; F01 przechodzi tworzenie, zapis i ponowny odczyt, kontrola właściciela |
| **Przed przerwą świąteczną** | Główna ewidencja finansowa | Trwałe plany, rezerwacje, wydatki, saldo i korekty; testy finansów |
| **Na początku stycznia** | Eksport i migracja próbna | Raport CSV/druk z bazy; importer z walidacją, idempotencją i raportem niezgodności |
| **Po domknięciu funkcjonalności** | Feature freeze | Wszystkie wymagane funkcje gotowe do testów, zgłoszone luki mają jasny status |
| **Około połowy stycznia** | Wdrożona aplikacja | System działa w uzgodnionym środowisku, dostępne konta, migracje i backup |
| **W drugiej połowie stycznia** | Testy użytkowników i odbiór | Pracownicy Działu Nauki przechodzą scenariusze i zgłaszają poprawki |
| **Przed odbiorem końcowym** | Retesty i stabilizacja | Bezpieczeństwo, backup/restore, odtwarzalny instalator, instrukcja operatora |
| **31.01** | **Gotowy system** | Aplikacja wdrożona, przetestowana i odebrana |

## Krytyczna ścieżka

1. **E/F:** dostęp per projekt ([#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173)). Bez tego nie ma bezpiecznego demonstratora.
2. **F/C:** usunięcie blokady `DEBUG=False` ([#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219)) i test użytkownika, nie tylko health.
3. **F/D:** kanoniczny model projektu ([#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220)) jest wymagany przez CRUD ([#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221)), finanse ([#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214)) i importer ([#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216)).
4. **B:** F01 [PR #222](https://github.com/zio-wi-pb-mc/pb-science-office/pull/222)/[PR #223](https://github.com/zio-wi-pb-mc/pb-science-office/pull/223)/[PR #224](https://github.com/zio-wi-pb-mc/pb-science-office/pull/224) jest scalona; pozostał odbiór integracyjny, nie kolejny model.
5. **A/F/D:** zapis finansowy → raporty i importer docelowy. Rozwijamy zapis danych i pełny przebieg operacji w rzeczywistej bazie.
6. **C + uczelnia:** hosting, dostęp, bezpieczeństwo środowiska, backup i sposób przekazania — uzgodnić teraz, nie w styczniu.

**Etapy pośrednie planujemy elastycznie, na podstawie postępów i zależności między zespołami.**

**Ryzyko terminowe:** dla ograniczonego, uzgodnionego zakresu plan może być wykonalny przy sprawnej integracji. Pełnego zastąpienia wszystkich funkcji legacy nie potwierdza aktualny stan repozytorium. Zakres musi zostać zatwierdzony przez Dział Nauki, bez dodawania nieustalonych nowych formularzy.

## Propozycje kierunków A–F

| Zespół | Praktyczny wkład do wyboru |
|---|---|
| **A** | Reguły i zapisy finansowe, test salda, eksport |
| **B** | Integracja F01 i następne uzgodnione formularze/operacje |
| **C** | Demo/E2E, wdrożenie, backup, instrukcje operatora |
| **D** | Import do ORM, zgodność danych, porównanie z legacy |
| **E** | Przypisania, role i brak dostępu do cudzych danych |
| **F** | Projekty w bazie, CRUD, integracja budżetu i Demo |

Każdy zespół wybiera sensowne zadania, a wspólnym kryterium jest **działający, sprawdzalny rezultat** i końcowy odbiór aplikacji.

[Roadmap zespołów](21-roadmap-3-tygodnie.md) · [Audyt legacy](22-audyt-legacy-parity.md) · [Dashboard](19-dashboard-projektu.md)
