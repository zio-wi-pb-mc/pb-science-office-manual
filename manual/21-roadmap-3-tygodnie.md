# Roadmap zespołów A–F — 25 listopada 2026

**Cel:** wdrożony i odebrany system dla Działu Nauki PB do 31 stycznia 2027. Priorytet: integracja **jednego działającego produktu**, nie liczba Issues.

**Stan:** `dev` nadal `e8d94872`, [CI PASS z 18.11](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850). Nowe PR-y są na gałęziach, więc nie ma jeszcze podstaw do ogłoszenia gotowości Demo.

## Ścieżka krytyczna: integracja → odbiór → pokaz

| Kolejność | Właściciel | Wynik |
|---|---|---|
| 1. [PR #235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235) | F / @Pawelkoz201 | Kontrola uprawnień i dwa konta, F3/F4 w Docker Demo `DEBUG=False` |
| 2. [PR #237](https://github.com/zio-wi-pb-mc/pb-science-office/pull/237) | F / @lukaszbondar1 | Kanoniczny model PostgreSQL i odczyt F3/F4, niezależne review aktualnego HEAD |
| 3. [PR #236](https://github.com/zio-wi-pb-mc/pb-science-office/pull/236) | F / @Patryk-Bura | Operator tworzy i edytuje projekt, zapis utrzymuje się w nowej sesji |
| Równolegle [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173)/[PR #240](https://github.com/zio-wi-pb-mc/pb-science-office/pull/240) | E / @CzaroAmaro | Jeden wspólny kontrakt z F; **nie scalać** drugiego `ProjectAssignment` |
| Po integracji [#246](https://github.com/zio-wi-pb-mc/pb-science-office/issues/246) | C / @Grinnazar | Niezależny odbiór Docker Demo na `dev`, wynik GO/NO-GO do [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) |

**Po każdym studenckim merge do `dev` aktualizować kolejny PR i powtarzać CI.** Scalenia wykonują studenci. Wydanie `dev → main` wyłącznie prowadzący.

## Praca równoległa

A i D mogą już przygotowywać przyrosty na uzgodnionym HEAD #237, C rozpocząć próbny odbiór zintegrowanej gałęzi #236, a B pomóc w niezależnym review formularzy CRUD. Zależne PR-y oznaczamy jako Draft z podanym SHA bazowym; po integracji aktualizujemy je do `dev` i ponawiamy CI. Końcowy odbiór dotyczy zintegrowanego `dev`. Zachowujemy właścicieli zadań i indywidualne rozliczenie wkładu. C równolegle przygotowuje wspólne środowisko testowe (#217); dostępność serwera uczelni pozostaje do uzgodnienia.

## Równoległa praca A–F

| Zespół | Zadania już przydzielone | Najbliższy rezultat |
|---|---|---|
| A | @dperkowski [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214), @mielonxd [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) | PR #248 (Draft, CI PASS): plan → rezerwacja → wydatek → saldo z PostgreSQL; zakres raportów do uzgodnienia |
| B | @Camed #241, @karichil #242, @Hackeristi #243, @patrycjachocko #244, @Zapsiu #245 | F02 jako praca równoległa, ale priorytet formularza musi potwierdzić Dział Nauki |
| C | @wersosn #238/PR #239, @Grinnazar #246, @Maciek-Sawicki #230, @kolyasiquez #196, @Leucist #233 | Odbiór F01 (ręczny PASS, flaky test), Docker Demo, backup/restore i doctor, docelowo ograniczone konto DB (#247: konflikt i CI FAIL; poprawki równolegle) |
| D | @TS40 [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) | Adapter importera do kanonicznego ORM i raport porównania/idempotencji |
| E | @CzaroAmaro #173/#240, @Emili-d #181, @michalborawski #120 | Spójne uprawnienia, scenariusze odmów, brak powielania F |
| F | @Pawelkoz201 koordynacja, @lukaszbondar1 #237, @Patryk-Bura #236 | Trwały model i CRUD projektów, bezpieczne Demo |

## Najbliższe dwa tygodnie

| Zespół | W najbliższych dniach | W kolejnym tygodniu |
|---|---|---|
| A | Review [PR #248](https://github.com/zio-wi-pb-mc/pb-science-office/pull/248), sprawdzenie kwot i kontraktu z D/F | Integracja finansów po modelu #237; saldo, rozliczenia, zakres raportów #215 |
| B | F02: #241–#245; pomoc w review CRUD #236 | Zintegrowany formularz F02 z testami; poprawki po uwagach |
| C | Próba #246 na #236, przygotowanie stagingu #217, poprawki #247 | Wdrożenie na VM po jej udostępnieniu, odbiór zintegrowanego dev, backup/restore, pomoc przy SAML2 |
| D | Adapter importera #216 do #237; uzgodnienie finansów z #248 | Próbny import zanonimizowanej bazy w izolacji, raport zgodności i idempotencji |
| E | Uzgodnienie #240 z #235, role #120/#181; rozpoczęcie #249 | Test SAML2 lokalnie i przygotowanie metadanych; testy uprawnień |
| F | Integracja #235 → #237 → #236, review i CI | Poprawki po odbiorze C, integracja finansów A i wsparcie SAML2 |

Nie czekamy na zakończenie całego modułu. Prace zależne można przygotować na uzgodnionej gałęzi; końcowy odbiór na `dev`. Studenci samodzielnie scalają PR-y po review i CI. Wydanie do `main` wykonuje prowadzący.

## Bramki terminowe

| Termin | Kryterium |
|---|---|
| **Przełom listopada i grudnia** | Ograniczony pokaz F01, listy/szczegółów/budżetu i ewentualnie CRUD — **tylko jeśli #246 potwierdzi PASS** |
| **04–11.12** | Trwałe projekty i CRUD na `dev`, naprawa uwag z odbioru F01 |
| **18.12** | Podstawowe operacje finansowe na trwałych danych i sprawdzony bilans |
| **08.01** | CSV/raporty i importer z kontrolą jakości |
| **15.01** | Planowany feature freeze uzgodnionego zakresu |
| **Druga połowa stycznia** | Testy użytkownika, bezpieczeństwo, hosting, backup i dokumentacja operatorska |
| **31.01** | Odbiór i przekazanie działającej aplikacji |

**Ryzyko biznesowe:** nie potwierdzono pełnego pokrycia legacy. Przy pierwszym pokazie Dział Nauki powinien wskazać zakres MUST (w tym F02, role, operacje i raporty), a nie zakładać wykonanie wszystkich opisanych formularzy.

[Start](index.md) · [Bieżące zadania](16-propozycje-zadan-po-audycie.md) · [Dashboard](19-dashboard-projektu.md) · [Plan do końca stycznia](23-plan-do-31-stycznia.md)
