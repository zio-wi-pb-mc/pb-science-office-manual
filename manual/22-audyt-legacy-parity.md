# Audyt legacy → Django: zakres odtworzenia i luki

**Cel projektu:** do **31 stycznia 2027 r.** dostarczamy **wdrożoną, przetestowaną i odebraną przez Dział Nauki aplikację** zastępującą uzgodniony zakres starego systemu. Zespoły samodzielnie wybierają zadania i rozwiązania; roadmapa oraz Issues są propozycjami pomagającymi zaplanować pracę.


**Stan analizy: 10.11.2026. Termin końcowy: 31.01.2027.** Porównano kod `dev` (SHA `e47e5800`) i dokumenty legacy w aplikacyjnym repozytorium. **Nie wykonano jeszcze pełnych testów interfejsu starego systemu z pracownikami Działu Nauki ani migracji rzeczywistych danych.** Każdy status jest oceną *potwierdzenia w kodzie*, a nie procentem ukończenia.

!!! warning "Dwa różne zakresy"
    **Zastąpienie istniejącego systemu** to administrowanie projektami, finansami, użytkownikami, rozliczeniami, delegacjami, konferencjami, archiwum i raportami potwierdzonymi w PHP/DB. **Nowe formularze i cyfrowy workflow**, opisane w katalogu 58 dokumentów, nie są automatycznie funkcjami starego systemu. Ich ewentualne dodanie to odrębna decyzja biznesowa; nie można bez niej obiecać pełnej realizacji do stycznia.

## Kluczowe źródła

- [Opis rzeczywistych operacji legacy](https://github.com/zio-wi-pb-mc/pb-science-office/blob/dev/docs/requirements/legacy-own-work-process.md): role, tworzenie/edycja pracy, kosztorys, rezerwacje, wydatki, korekty, archiwum, kontynuacja, konferencje/delegacje.
- [Mapa bazy legacy](https://github.com/zio-wi-pb-mc/pb-science-office/blob/dev/docs/legacy/database-map.md): 43 tabele, 11 triggerów, w tym typy projektów, `rozl_*`, rezerwy, `users`, konferencje, delegacje.
- [Katalog raportów i eksportów](https://github.com/zio-wi-pb-mc/pb-science-office/blob/dev/docs/requirements/output-artifacts-catalog.md): zestawienia, CSV, wydruki HTML.
- [Katalog 58 materiałów formularzowych](https://github.com/zio-wi-pb-mc/pb-science-office/blob/dev/docs/requirements/common-form-elements.md), [analiza granicy legacy](https://github.com/zio-wi-pb-mc/pb-science-office/blob/dev/docs/requirements/outside-of-legacy-own-work-process.md).
- Kod: [`src/projects/data.py`](https://github.com/zio-wi-pb-mc/pb-science-office/blob/dev/src/projects/data.py), [`src/projects/views.py`](https://github.com/zio-wi-pb-mc/pb-science-office/blob/dev/src/projects/views.py), [`src/budget_preview/views.py`](https://github.com/zio-wi-pb-mc/pb-science-office/blob/dev/src/budget_preview/views.py), [`src/accounts/models.py`](https://github.com/zio-wi-pb-mc/pb-science-office/blob/dev/src/accounts/models.py).

## Statusy

- **Częściowo:** potwierdzona część funkcji, lecz brak kluczowego zapisu/uprawnień/pełnego odbioru.
- **Brak implementacji:** w bieżącym drzewie aplikacji nie znaleziono odpowiedniej funkcji produkcyjnej.
- **W trakcie:** istnieje Issue/PR, nie oznacza dostarczenia.
- **Niepotwierdzone:** brak podstaw do uznania za wymóg/zgodność lub nie przeprowadzono odbioru.

## Macierz pokrycia rzeczywistych funkcji starej aplikacji

| ID | Funkcja legacy / dowód | Stan w nowej aplikacji 10.11 | Sugerowany obszar współpracy | Kryterium odbioru / przykładowe Issue |
|---|---|---|---|---|
| L01 | Użytkownicy, role, sesje | **Częściowo:** Django auth/F2, [PR #180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180) | E+F | Uprawnienia admin/dziekan/rektor/kierownik i testy per rola, [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) |
| L02 | Wykaz prac według rodzaju, roku, użytkownika | **Częściowo:** F3 z 6 statycznych `SyntheticProject` | F | Lista z PostgreSQL, filtry i właściwe przypisania; [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) |
| L03 | Szczegóły pracy, symbol, rok, kierownik, opis | **Częściowo:** odczyt danych syntetycznych | F | Rekord z bazy, poprawny klucz złożony i lata; [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) |
| L04 | Admin: założenie nowej pracy/projektu | **Brak implementacji zapisu** | F | Formularz admin create + test ponownego odczytu; [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) |
| L05 | Admin: edycja planu i danych projektu | **Brak implementacji zapisu** | F+A | Edycja i walidacja z PostgreSQL; [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213), [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| L06 | Kategorie źródeł finansowania (`granty`, `statut`, `wlasne`, `umowne`, itd.) | **Częściowo:** opis i przykłady w danych syntetycznych | F+D | Model typów i import co najmniej kluczowych kategorii; [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213), [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) |
| L07 | Kosztorys / plan według kategorii kosztowych | **Częściowo:** obliczenia/podgląd F4 | A+F | Trwały zapis planu i reguły obliczeń; [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| L08 | Rezerwacja środków w `rozl_*` | **Częściowo:** scenariusze referencyjne, brak transakcyjnego zapisu | A+F | Utworzenie, edycja/kontrola, saldo; [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| L09 | Rejestracja faktycznego wydatku | **Częściowo:** odczyt scenariuszy w F4 | A+F | Zapis operacji i trwała zmiana salda; [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| L10 | Częściowe/pełne rozliczenie rezerwacji | **Częściowo:** opis i testy arytmetyki | A+F | Pełny cykl i porównanie ze źródłem; [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214), [#204](https://github.com/zio-wi-pb-mc/pb-science-office/issues/204) |
| L11 | Narzuty wydziałowe i ogólne | **Częściowo:** reguły/liczby i testy | A | Test na realnym modelu zapisu, weryfikacja zaokrągleń; [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| L12 | Korekta/odwrócenie błędnych zapisów | **Brak implementacji** | A+F | Korekta ze śladem kto/kiedy i zgodnym bilansem; [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| L13 | Rezerwy rektora/dziekana, przesunięcia/transfery | **Częściowo:** analiza w dokumentacji i przykłady | A+D | Potwierdzić priorytet z Działem Nauki, jeśli obowiązkowe: testy przelewów; [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| L14 | Zamknięcie roku pracy i cofnięcie archiwizacji | **Brak implementacji** | F | Archiwizuj/odarchiwizuj bez utraty historii; [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) |
| L15 | Kontynuacja pracy w kolejnym roku | **Brak implementacji** | F+A | Przeniesienie powiązań i aktywnych rezerwacji, wynik porównany z legacy; zakres do potwierdzenia |
| L16 | Dostęp do własnych projektów | **Brak autoryzacji obiektowej:** [PR #212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) wymaga logowania, ale nie ogranicza własności | E+F | Konta A/B, odmowa cudzego HTML/JSON/budżetu; [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173), [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) |
| L17 | Panel administratora operacyjnego | **Częściowo:** Django admin techniczny; brak operacji domenowych | F+E | Operator wykonuje create/edit/finance bez konsoli Pythona; [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213), [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| L18 | Panel rektora/dziekana — read-only zakres | **Brak potwierdzonych ograniczeń zakresu** | E+F | Test zakresu jednostek/finansów i odmowy zapisów |
| L19 | Konferencje — ewidencja, rozliczenie, alarmy | **Brak implementacji** | B/F | Decyzja Działu Nauki: funkcja obowiązkowa? Jeśli tak, minimalny rejestr CRUD i test |
| L20 | Delegacje — rejestr i rozliczenie | **Brak implementacji** | B/F | Analogicznie: potwierdzić zakres, min. zapis/odczyt/edycja |
| L21 | Wiadomości kierownika do administracji | **Brak implementacji** | B/E | Potwierdzić potrzebę; prosty komunikat przypisany do projektu |
| L22 | Raport per projekt: koszty, saldo, historia | **Częściowo:** podsumowanie F4 z danych syntetycznych | A+F | Raport z trwałych danych i uzgodniony bilans; [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) |
| L23 | Zestawienia wg roku, jednostki, typu i przekroczeń | **Brak implementacji** | A+F | Filtry i test zbiorczy; [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) |
| L24 | Eksport CSV i wydruki HTML | **Brak implementacji nowego eksportera** | A+F | Podstawowe CSV/druk z kontrolą ról; [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) |
| L25 | Import starej bazy MariaDB i mapowanie relacji | **Brak potwierdzonej migracji do modeli Django** | D+F | Import testowy, idempotencja, raport niezgodności; [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) |
| L26 | Historia operacji / diagnostyka nieprawidłowych zapisów | **Częściowo:** techniczne health/CI; brak historii finansowej | A+C | Log autora i czasu, diagnostyka bilansów; [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| L27 | Instalacja i bezpieczeństwo wydania | **Częściowo:** Docker CI PASS; funkcjonalne Demo niezweryfikowane | C+E+F | Cały scenariusz przy `DEBUG=False`, bez hasła w repo; [#205](https://github.com/zio-wi-pb-mc/pb-science-office/issues/205), [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) |

**Najważniejszy wniosek:** braki L04–L15 i L19–L25 nie są „kosmetyką”. Zastąpienie legacy wymaga **operacji zapisu i danych trwałych**, a nie tylko czytelnego podglądu. Nie ma uzasadnienia dla podawania jednego „% ukończenia” bez potwierdzenia pokrycia ścieżek.

## Nowe formularze / workflow poza zakresem potwierdzonej parytetowości

| Obszar | Dowód | Stan i decyzja |
|---|---|---|
| F01 — fiszka projektowa | wzór P01 / [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) | **W trakcie**; cel na grudzień, jest *nową* funkcją względem potwierdzonego kodu legacy |
| Wnioski o prace własne i projekty doktorskie, ocena, raporty i protokoły | `process-research-work.md` | **Niezaimplementowane**, nie utożsamiać z istniejącą ewidencją legacy |
| Wnioski o podróże, konferencje, publikacje | `process-travel-conference.md` i `forms-catalog.md` | Wzory/formularze — **nie** dowód cyfrowego workflow w legacy |
| Workflow submit/revise/approve/reject | `statuses-and-transitions.md` | **Propozycja nowego systemu**, nie potwierdzona funkcja starej aplikacji |
| Cały katalog 58 dokumentów | `common-form-elements.md` | 58 plików różnego typu, **nie 58 funkcji do zaprogramowania** |

## Czego audyt jeszcze NIE rozstrzyga

1. Nie mamy odbioru na żywym legacy z przedstawicielem Działu Nauki; część materiałów rekonstruuje działanie z PHP, dumpu i dokumentacji.
2. Nie mamy zaakceptowanej przez użytkownika biznesowego listy funkcji **obowiązkowych 1:1** i danych do migracji.
3. Nie wykazano pełnej poprawności reguł finansowych względem oryginalnych zapisów ani działania Demo w `DEBUG=False` od loginu do budżetu.
4. Nie znamy dostępnych studentogodzin w grudniu i styczniu ani rzeczywistego zakresu operacji konferencji/delegacji.

**Decyzja do 20.11:** przedstawiciel Działu Nauki zatwierdza tabelę L01–L27 w podziale **MUST (potrzebne do zastąpienia) / LATER (poza wymaganym zakresem) / UNCERTAIN**. Po 20.11 żadne nowe „fajne” formularze nie mogą wypierać MUST bez jawnej zmiany zakresu. Zobacz [plan do 31 stycznia](23-plan-do-31-stycznia.md).
