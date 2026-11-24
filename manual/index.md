# ZIO — co robić teraz

**Cel:** do **31 stycznia 2027 r.** dostarczyć Działowi Nauki PB jeden działający, wdrożony i przetestowany system. Sześć zespołów A–F pracuje nad jednym produktem; nie zmieniamy formalnych zespołów ani zasad punktacji.

**Stan potwierdzony 24.11.2026:** aplikacja `dev` = `e8d94872`, [ostatnie CI `dev` PASS](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850) **18.11**, brak nowych merge do `dev`. Nowy kod na gałęziach studentów nie jest jeszcze funkcją wersji zintegrowanej. [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1) i Issues pozostają źródłem przypisań.

## Najpierw: bezpieczne Demo dla Działu Nauki

**Cel na przełom listopada i grudnia: pokazać funkcje, które naprawdę działają, zebrać wymagania, nie deklarować gotowości do wdrożenia produkcyjnego.**

| Kolejność | Co i kto | Stan |
|---|---|---|
| **1** | [PR #235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235) — F, **@Pawelkoz201**: dwa konta, kontrola przypisań, F3/F4 HTML/JSON przy `DEBUG=False` | PR otwarty, studencki APPROVE, próba HTTP i CI na gałęzi; nie ma jeszcze na `dev` |
| **2** | [PR #237](https://github.com/zio-wi-pb-mc/pb-science-office/pull/237) — F, **@lukaszbondar1**: trwały model `Project` PostgreSQL i odczyt F3/F4 | PR otwarty, wymaga niezależnego review aktualnej integracji |
| **3** | [PR #236](https://github.com/zio-wi-pb-mc/pb-science-office/pull/236) — F, **@Patryk-Bura**: tworzenie i edycja projektu przez operatora | PR otwarty; po #237 odświeżyć bazę, ponowić CI i review |
| **Równolegle** | [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173), [PR #240](https://github.com/zio-wi-pb-mc/pb-science-office/pull/240) — E, **@CzaroAmaro** i zespół: jeden kontrakt ról/przypisań z F | **Nie scalać #240 osobno**, bo nakłada się na `ProjectAssignment` z #235 |
| **Po integracji** | [#246](https://github.com/zio-wi-pb-mc/pb-science-office/issues/246) — C, **@Grinnazar**: niezależny test dwóch kont i Docker Demo na `dev`, raport GO/NO-GO | Próba na #236 już teraz; końcowy odbiór na `dev` |

**Scalenia do `dev` wykonują studenci**, po merytorycznym review i zielonym CI, w kolejności **#235 → #237 → #236**. Po każdym merge odświeżyć kolejny PR i powtórzyć CI. Wydanie `dev → main` należy wyłącznie do prowadzącego.

**Warunek pokazania aplikacji:** Docker Demo `DEBUG=False` z dwoma różnymi kontami; filtrowanie własnych projektów; 404 dla cudzych szczegółów, budżetu i JSON; operator zapisuje projekt w PostgreSQL i odczytuje go w nowej sesji. Brak któregokolwiek krytycznego punktu oznacza **NO-GO** dla pokazu tego przepływu.

## Co robią zespoły — bieżące zadania

| Zespół | Wykonawcy i priorytet |
|---|---|
| **A — finanse** | **@dperkowski**, [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214): pierwszy trwały przepływ plan → rezerwacja → wydatek → saldo po ponownym odczycie. **@mielonxd**, [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215): minimalny zakres raportów |
| **B — formularze** | F01 jest w `dev`. [#241–#245](https://github.com/zio-wi-pb-mc/pb-science-office/issues/241) — przydzielone zadania F02: @Camed, @karichil, @Hackeristi, @patrycjachocko, @Zapsiu. **F02 nie blokuje Demo**; jego priorytet i wymagane pola należy potwierdzić z Działem Nauki |
| **C — platforma/testy** | **@Grinnazar** [#246](https://github.com/zio-wi-pb-mc/pb-science-office/issues/246) odbiór Demo; **@wersosn** [#238](https://github.com/zio-wi-pb-mc/pb-science-office/issues/238)/[PR #239](https://github.com/zio-wi-pb-mc/pb-science-office/pull/239) odbiór F01; **@Maciek-Sawicki** [#230](https://github.com/zio-wi-pb-mc/pb-science-office/issues/230) backup/restore; **@kolyasiquez** [#196](https://github.com/zio-wi-pb-mc/pb-science-office/issues/196) doctor |
| **D — migracja** | **@TS40**, [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216): przygotowanie adaptera do `Project` na gałęzi #237, odbiór po integracji, test idempotencji i raport zgodności |
| **E — uprawnienia** | **@CzaroAmaro**, [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173)/[#240](https://github.com/zio-wi-pb-mc/pb-science-office/pull/240): usuńcie kolizję z #235; **@Emili-d** [#181](https://github.com/zio-wi-pb-mc/pb-science-office/issues/181) scenariusze; **@michalborawski / @Emili-d** [#120](https://github.com/zio-wi-pb-mc/pb-science-office/issues/120) macierz ról |
| **F — integracja** | **@Pawelkoz201** koordynuje #235/#237/#236; autorzy kodu **@lukaszbondar1** (#237) i **@Patryk-Bura** (#236) odpowiadają za swoje zmiany i studencki merge |

**C / #233:** nowy [PR #247](https://github.com/zio-wi-pb-mc/pb-science-office/pull/247) rozdziela konta PostgreSQL. Konflikt i CI FAIL; poprawki równolegle, bez blokowania pierwszego Demo.

## Co już można pokazać i czego NIE obiecywać

- **F01:** osobna próba na PostgreSQL 17 z [raportu #239](https://github.com/zio-wi-pb-mc/pb-science-office/pull/239) potwierdziła logowanie, zapis, odczyt i odmowę cudzej fiszki — PASS ręczny. Jeden test automatyczny znaczników czasu wykazuje niestabilność (3/5 niepowodzeń; wynik lokalny 1 failed, 240 passed, 2 skipped), więc nie ukrywać usterki.
- **Finanse:** obecnie część danych F4 jest syntetyczna; zapis planów i operacji z #214 nie jest zintegrowany. **Nie przedstawiać F4 jako gotowej księgowości.**
- **Importer:** istnieje dry-run i walidacja z #226, nie ma jeszcze pełnego importu do kanonicznego ORM.
- **Backup/restore i doctor:** kod jest w `dev`, niezależne próby pozostają otwarte (#230 i #196).
- **PR #174:** historyczny Draft do `main`, nie scalać; nowy PR E #240 wymaga zgodności z F.

## Praca równoległa

A i D mogą już przygotowywać przyrosty na uzgodnionym HEAD #237, C rozpocząć próbny odbiór zintegrowanej gałęzi #236, a B pomóc w niezależnym review formularzy CRUD. Zależne PR-y oznaczamy jako Draft z podanym SHA bazowym; po integracji aktualizujemy je do `dev` i ponawiamy CI. Końcowy odbiór dotyczy zintegrowanego `dev`. Zachowujemy właścicieli zadań i indywidualne rozliczenie wkładu. C równolegle przygotowuje wspólne środowisko testowe (#217); dostępność serwera uczelni pozostaje do uzgodnienia.

## Najbliższy wybór

Masz zadanie? Pracuj na aktualnej gałęzi, sprawdź zależności i opisz test PASS/FAIL. Potrzebujesz pomocy? Uzgodnij wsparcie międzyzespołowe z liderem **w istniejącym Issue**; nie twórz konkurencyjnego modelu. Działający fragment i test mają pierwszeństwo przed kolejnym raportem.

[**Aktualne priorytety i przypisania**](16-propozycje-zadan-po-audycie.md) · [**Dashboard i leaderboard**](19-dashboard-projektu.md) · [**Roadmapa**](21-roadmap-3-tygodnie.md) · [**Plan do 31 stycznia**](23-plan-do-31-stycznia.md) · [**Podstawowe informacje**](20-informacje-podstawowe.md)
