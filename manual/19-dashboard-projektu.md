# Dashboard projektu i leaderboard

**Cel ZIO:** do **31 stycznia 2027 r.** aplikacja ma być **wdrożona, przetestowana i odebrana przez Dział Nauki**. Każdy zespół może wybierać własne zadania lub wspierać inne zespoły; roadmapa pokazuje najbardziej potrzebne kierunki pracy.

**Stan kodu i PR: 18.11.2026 (`dev` `e8d94872`, CI PASS).** Dane punktowe są odrębnym, formalnie zatwierdzonym snapshotem z **03.11.2026**, zgodnym z [Issue #86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86).

## Zasady współpracy między zespołami

**Sześć zespołów A–F współpracuje nad jedną aplikacją.** Zachowujemy indywidualną punktację, dotychczasowych liderów i dwa terminy zajęć. Dopuszczamy wspólne realizowanie fragmentów innych zespołów: B pomaga F przy formularzach, D przy modelu PostgreSQL, C przy odbiorze uprawnień i Demo, A przy modelu finansów. Studenci i liderzy ustalają swój udział w odpowiednich Issues.

Oceniamy rzeczywisty wkład studentów — również review, testy, integrację i pomoc poza własnym zespołem — zgodnie z [zasadami oceniania](08-ocenianie.md) i [leaderboardem #86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86). Historyczne punkty z 03.11 pozostają bez zmian do audytu.

## Gotowość produktu

| Element | Obecny stan | Co dalej |
|---|---|---|
| CI dla `dev` | **PASS na aktualnym SHA** `e8d94872` (5 jobów: application, repository, Docker Compose, Demo image, backup/restore) | [Szczegóły CI](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850) |
| Logowanie → F3 → F4 | Połączony przepływ na danych syntetycznych | E: [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) + F: [#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219) blokują bezpieczne Demo |
| F01 | **Model, formularz, zapis/odczyt własnych fiszek i testy w `dev`** | B: [#229](https://github.com/zio-wi-pb-mc/pb-science-office/pull/229) i [#231](https://github.com/zio-wi-pb-mc/pb-science-office/pull/231) scalone; Issues #197–#201 zamknięte. Potwierdzić próbę E2E na PostgreSQL |
| Projekty główne | **Brak trwałego modelu F3**, obecnie `SyntheticProject` | F: [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220), [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221) w ramach [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) |
| Finanse | Podgląd, walidacja i testy na scenariuszach | A/F: trwały zapis [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| Importer | Dry-run, walidacja, idempotencja na magazynie pamięciowym | D/F: [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) do docelowego ORM |
| Backup i diagnostyka | **[#232](https://github.com/zio-wi-pb-mc/pb-science-office/pull/232)** — backup/restore; **[#234](https://github.com/zio-wi-pb-mc/pb-science-office/pull/234)** — `doctor`; oba MERGED | C: ręczna próba przez inną osobę; #230 i #196 otwarte do odbioru |
| Raporty i wdrożenie | Plan i procedury, niepełna implementacja | [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215), [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) i uzgodnienie hostingu |

**Uwaga:** w Docker Demo `DEBUG=False` projekty i budżety nadal mają ścieżkę zwracającą 404. CI obrazu nie wykonuje funkcjonalnego testu F3/F4.

## Aktywność studentów — 10–16 listopada

**12 scalonych PR w okresie 10–16 listopada, 8 różnych autorów, 5 zespołów. Po tym okresie scalono także #232 (17.11) i #229, #231, #234 (18.11).** To nowa aktywność i realna implementacja, ale PR-y mają różny zakres. Tabela opisuje *zakończone scalenia*, nie punkty i nie indywidualne oceny.

| Zespół | Autorzy i scalone PR | Rezultat |
|---|---|---|
| **A — 4 PR** | Daniel Perkowski [PR #210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [PR #185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185), [PR #218](https://github.com/zio-wi-pb-mc/pb-science-office/pull/218); Aleksandra Masiejczyk [PR #209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209) | Referencyjne kwoty, testy i obsługa błędów |
| **B — 3 PR** | Gabriel Chomiczewski [PR #222](https://github.com/zio-wi-pb-mc/pb-science-office/pull/222); Karina Chilkiewicz [PR #223](https://github.com/zio-wi-pb-mc/pb-science-office/pull/223); Klaudia Klim [PR #224](https://github.com/zio-wi-pb-mc/pb-science-office/pull/224) | Model, formularz, widoki i testy F01 |
| **C — 2 PR do 16.11 + 1 nowy** | Weronika Sosnowska [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207), [#228](https://github.com/zio-wi-pb-mc/pb-science-office/pull/228); Maciej Sawicki [#232](https://github.com/zio-wi-pb-mc/pb-science-office/pull/232) (17.11) | Konta demo, wymagania odbioru, backup i restore PostgreSQL |
| **D — 2 PR** | Tomasz Sidoruk [PR #225](https://github.com/zio-wi-pb-mc/pb-science-office/pull/225), [PR #226](https://github.com/zio-wi-pb-mc/pb-science-office/pull/226) | Plan zgodności i pierwszy importer |
| **F — 1 PR** | Paweł Kozikowski [PR #211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) | Mobilny widok F3 |
| **E — bez nowego merge** | [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) pozostaje Draft | Otwarta krytyczna praca nad uprawnieniami |

**Jak to czytać:** powyższa tabela opisuje przede wszystkim prace do 16 listopada. Nowsze scalenia #229, #231, #232 i #234 są uwzględnione w sekcji gotowości produktu, lecz nie zwiększają automatycznie punktów. Największe wdrożeniowe przyspieszenie nastąpiło w B i D. Zespół E ma ważne zadanie w toku, ale brak scalenia nie dowodzi braku pracy. Liczba PR nie zastępuje oceny działania produktu.

## Contribution Leaderboard — oficjalny snapshot 03.11

Poniższa punktacja pozostaje bez zmian do przeliczenia według [zasad #86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86): zamknięte Issue, właściwy pojedynczy assignee, merge, merytoryczny studencki review, zatwierdzony przed merge rozmiar M/L i limity tygodniowe. **Najnowsze prace z tabeli powyżej nie są jeszcze rozliczone punktowo.**

### Ranking indywidualny

| # | Student | GitHub | Zespół | Punkty | Rozliczone taski | Punktowane review |
|---:|---|---|:---:|---:|---:|---:|
| 1 | Weronika Sosnowska | @wersosn | C | **22** | 5 | 3 |
| 2 | Nazar Hrinchenko | @Grinnazar | C | **21** | 4 | 4 |
| 3 | Vladislav Matveev | @Leucist | C | **19** | 4 | 8 |
| 4 | Mykola Nishchymnyi | @kolyasiquez | C | **16** | 3 | 4 |
| 5 | Maciej Sawicki | @Maciek-Sawicki | C | **15** | 3 | 3 |
| 6 | Daniel Perkowski | @dperkowski | A | **14** | 3 | 2 |
| 7 | Jakub Mirończuk | @mielonxd | A | **9** | 2 | 2 |
| 8 | Klaudia Natalia Klim | @Hackeristi | B | **8** | 3 | 2 |
| 9 | Karina Chilkiewicz | @karichil | B | **6** | 2 | 2 |
| 9 | Bartłomiej Karanowski | @Zapsiu | B | **6** | 2 | 2 |
| 9 | Patrycja Choćko | @patrycjachocko | B | **6** | 2 | 2 |
| 12 | Paweł Kozikowski | @Pawelkoz201 | F | **3** | 1 | 1 |
| 13 | Gabriel Chomiczewski | @Camed | B | **2** | 1 | 0 |
| 13 | Miłosz Dubowski | @Orangunio | D | **2** | 1 | 0 |
| 13 | Jakub Pawlak | @NacomiTagiera | F | **2** | 1 | 0 |
| 16 | Tomasz Sidoruk | @TS40 | D | **1** | 0 | 1 |
| 16 | Łukasz Bondar | @lukaszbondar1 | F | **1** | 0 | 1 |
| 18 | Aleksandra Masiejczyk | @Olinda-M | A | **0** | 0 | 0 |
| 18 | Emilia Drewnowska | @Emili-d | E | **0** | 0 | 0 |
| 18 | Cezary Babik | @CzaroAmaro | E | **0** | 0 | 0 |
| 18 | Michał Borawski | @michalborawski | E | **0** | 0 | 0 |
| 18 | Patryk Bura | @Patryk-Bura | F | **0** | 0 | 0 |

### Ranking zespołowy

| # | Zespół | Suma punktów | Aktywni | Punkty / osobę |
|---:|:---:|---:|---:|---:|
| 1 | C | **93** | 5 | **18.60** |
| 2 | A | **23** | 3 | **7.67** |
| 3 | B | **28** | 5 | **5.60** |
| 4 | D | **3** | 2 | **1.50** |
| 4 | F | **6** | 4 | **1.50** |
| 6 | E | **0** | 3 | **0.00** |

**Ważne:** punktacja jest historycznym snapshotem z 03.11. Nowy ranking powstanie po sprawdzeniu PR/Issues i peer review zgodnie z zasadami #86.

## Miejsca pracy

- [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1) — aktualne przydziały i statusy.
- [Otwarte PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls) — #174 i #235 (stan 18.11, oba Draft).
- [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues) — zadania i kryteria odbioru.
- [Bank propozycji](17-bank-zadan-mvp.md) — pomysły dla osób bez własnego zadania.
- [Roadmapa](21-roadmap-3-tygodnie.md) — cele na najbliższe tygodnie.
