# Roadmap zespołów A–F — 24 listopada 2026

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

**Po każdym studenckim merge do `dev` aktualizować kolejny PR i powtarzać CI.** Scalenia wykonują studenci, ChatGPT nie wykonuje merge. Wydanie `dev → main` wyłącznie prowadzący.

## Równoległa praca A–F

| Zespół | Zadania już przydzielone | Najbliższy rezultat |
|---|---|---|
| A | @dperkowski [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214), @mielonxd [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) | Mały PR: plan → rezerwacja → wydatek → saldo z PostgreSQL; zakres raportów do uzgodnienia |
| B | @Camed #241, @karichil #242, @Hackeristi #243, @patrycjachocko #244, @Zapsiu #245 | F02 jako praca równoległa, ale priorytet formularza musi potwierdzić Dział Nauki |
| C | @wersosn #238/PR #239, @Grinnazar #246, @Maciek-Sawicki #230, @kolyasiquez #196, @Leucist #233 | Odbiór F01 (ręczny PASS, flaky test), Docker Demo, backup/restore i doctor, docelowo ograniczone konto DB |
| D | @TS40 [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) | Adapter importera do kanonicznego ORM i raport porównania/idempotencji |
| E | @CzaroAmaro #173/#240, @Emili-d #181, @michalborawski #120 | Spójne uprawnienia, scenariusze odmów, brak powielania F |
| F | @Pawelkoz201 koordynacja, @lukaszbondar1 #237, @Patryk-Bura #236 | Trwały model i CRUD projektów, bezpieczne Demo |

## Bramki terminowe

| Termin | Kryterium |
|---|---|
| **27–30.11 lub początek grudnia** | Ograniczony pokaz F01, listy/szczegółów/budżetu i ewentualnie CRUD — **tylko jeśli #246 potwierdzi PASS** |
| **04–11.12** | Trwałe projekty i CRUD na `dev`, naprawa uwag z odbioru F01 |
| **18.12** | Podstawowe operacje finansowe na trwałych danych i sprawdzony bilans |
| **08.01** | CSV/raporty i importer z kontrolą jakości |
| **15.01** | Planowany feature freeze uzgodnionego zakresu |
| **Druga połowa stycznia** | Testy użytkownika, bezpieczeństwo, hosting, backup i dokumentacja operatorska |
| **31.01** | Odbiór i przekazanie działającej aplikacji |

**Ryzyko biznesowe:** nie potwierdzono pełnego pokrycia legacy. Przy pierwszym pokazie Dział Nauki powinien wskazać zakres MUST (w tym F02, role, operacje i raporty), a nie zakładać wykonanie wszystkich opisanych formularzy.

[Start](index.md) · [Bieżące zadania](16-propozycje-zadan-po-audycie.md) · [Dashboard](19-dashboard-projektu.md) · [Plan do końca stycznia](23-plan-do-31-stycznia.md)
