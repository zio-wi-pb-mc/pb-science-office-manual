# ZIO — co robić teraz

**Cel: działający system dla Działu Nauki do 31 stycznia 2027 r.**

## Aktualności — 25 listopada

- Przygotowujemy wspólny serwer testowy. Proponowany adres: `nauka.pb.edu.pl/test/`. Konfiguracja i termin udostępnienia do uzgodnienia z administratorem.
- Logowanie uczelniane przez SAML2 (`login.pb.edu.pl`): [#249](https://github.com/zio-wi-pb-mc/pb-science-office/issues/249), E przy wsparciu C/F. Pierwszy pokaz może odbyć się na kontach testowych.
- Do prób migracji mamy zanonimizowany dump starej bazy. Używamy go po sprawdzeniu anonimizacji, poza GitHubem i publicznym Demo.
- Finanse: [PR #248](https://github.com/zio-wi-pb-mc/pb-science-office/pull/248) — pierwszy przyrost, CI PASS, Draft na modelu #237.

## Najpierw integracja i pokaz

1. F: [PR #235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235) → [PR #237](https://github.com/zio-wi-pb-mc/pb-science-office/pull/237) → [PR #236](https://github.com/zio-wi-pb-mc/pb-science-office/pull/236) — review, aktualizacja gałęzi, CI i studenckie merge do `dev`.
2. E: [PR #240](https://github.com/zio-wi-pb-mc/pb-science-office/pull/240) uzgodnić z #235; jeden model przypisań.
3. C: [#246](https://github.com/zio-wi-pb-mc/pb-science-office/issues/246) — test dwóch kont, CRUD i F01. Zacząć na #236, powtórzyć na zintegrowanym `dev`.
4. Po pozytywnym odbiorze: pokaz Działowi Nauki na danych syntetycznych i zebranie uwag.

**Stan 25.11:** `dev` = `e8d94872`, CI PASS z 18.11. Nowe funkcje pozostają w otwartych PR-ach. [PR #247](https://github.com/zio-wi-pb-mc/pb-science-office/pull/247) wymaga naprawy CI; nie blokuje pierwszego pokazu.

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

[Aktualne zadania i wykonawcy](16-propozycje-zadan-po-audycie.md) · [Dashboard i leaderboard](19-dashboard-projektu.md) · [Roadmapa](21-roadmap-3-tygodnie.md) · [Środowiska](18-srodowiska-mvp.md) · [Plan do końca stycznia](23-plan-do-31-stycznia.md)
