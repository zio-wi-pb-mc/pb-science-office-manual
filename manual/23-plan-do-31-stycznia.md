# Plan dostawy ZIO — do 31 stycznia 2027

**Cel ZIO:** do **31 stycznia 2027 r.** aplikacja ma być **wdrożona, przetestowana i odebrana przez Dział Nauki**. Zespoły mogą samodzielnie wybierać zadania; wskazane Issues są propozycjami, nie przydziałami.

**Stan planu: 18.11.2026.** Prace trwają na [`dev`](https://github.com/zio-wi-pb-mc/pb-science-office/tree/dev); do wydania w `main` decyduje prowadzący. Zapisane Issues pokazują możliwości realizacji, a nie przymusowy przydział.

## Terminy i kryteria odbioru

| Data | Kamień milowy | Sprawdzamy |
|---|---|---|
| **20.11** | Uzgodnienie współpracy i kontraktu | Liderzy ustalają identyfikację projektu, granice prac E/F/C, B/F, D/F i A/F oraz kto odpowiada za integrację. Aktualny stan Demo zapisują jako PASS/FAIL; ukończona funkcja nie jest warunkiem tego checkpointu |
| **24–27.11** | Pierwsze przyrosty implementacji | Małe PR-y/testy dla przypisań, modelu projektów, formularzy i finansów; próba dwóch kont oraz ustalenie braków |
| **01–04.12** | Pierwszy pokaz i przegląd współpracy | Pokaz wyłącznie bezpiecznych i działających funkcji; zebranie uwag Działu Nauki, uzgodnienie zakresu obowiązkowego; 03.12 przegląd skuteczności wsparcia między zespołami |
| **04.12** | Projekty w PostgreSQL | Model/migracje, właściwy typ/rok/projekt, F3 i F4 bez odczytu z `SyntheticProject` |
| **11.12** | Operacje na projektach i F01 | Operator tworzy/edytuje projekt; F01 przechodzi tworzenie, zapis i ponowny odczyt, kontrola właściciela |
| **18.12** | Główna ewidencja finansowa | Trwałe plany, rezerwacje, wydatki, saldo i korekty; testy finansów |
| **08.01** | Eksport i migracja próbna | Raport CSV/druk z bazy; importer z walidacją, idempotencją i raportem niezgodności |
| **10.01** | Feature freeze | Wszystkie wymagane funkcje gotowe do testów, zgłoszone luki mają jasny status |
| **15.01** | Wdrożona aplikacja | System działa w uzgodnionym środowisku, dostępne konta, migracje i backup |
| **16–25.01** | Testy użytkowników i odbiór | Pracownicy Działu Nauki przechodzą scenariusze i zgłaszają poprawki |
| **26–30.01** | Retesty i stabilizacja | Bezpieczeństwo, backup/restore, odtwarzalny instalator, instrukcja operatora |
| **31.01** | **Gotowy system** | Aplikacja wdrożona, przetestowana i odebrana |

## Krytyczna ścieżka

1. **E/F:** dostęp per projekt ([#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173)). Bez tego nie ma bezpiecznego demonstratora.
2. **F/C:** usunięcie blokady `DEBUG=False` ([#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219)) i test użytkownika, nie tylko health.
3. **F/D:** kanoniczny model projektu ([#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220)) jest wymagany przez CRUD ([#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221)), finanse ([#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214)) i importer ([#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216)).
4. **B:** F01 [PR #222](https://github.com/zio-wi-pb-mc/pb-science-office/pull/222)/[PR #223](https://github.com/zio-wi-pb-mc/pb-science-office/pull/223)/[PR #224](https://github.com/zio-wi-pb-mc/pb-science-office/pull/224) jest scalona; pozostał odbiór integracyjny, nie kolejny model.
5. **A/F/D:** zapis finansowy → raporty i importer docelowy. Nie rozwijamy wyłącznie syntetycznego demo.
6. **C + uczelnia:** hosting, dostęp, bezpieczeństwo środowiska, backup i sposób przekazania — uzgodnić teraz, nie w styczniu.

**Terminy listopadowe i grudniowe są punktami kontrolnymi pracy; nie zakładamy wykonania całej implementacji w ciągu dwóch dni.**

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

Nie wymagamy wykonania wszystkich zaproponowanych Issues. Wymagamy jednak **kompletnego, sprawdzalnego efektu** do dat odbioru.

[Roadmap zespołów](21-roadmap-3-tygodnie.md) · [Audyt legacy](22-audyt-legacy-parity.md) · [Dashboard](19-dashboard-projektu.md)
