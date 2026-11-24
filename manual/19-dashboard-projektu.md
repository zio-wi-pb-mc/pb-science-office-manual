# Dashboard projektu i leaderboard

**Cel ZIO:** do **31 stycznia 2027 r.** aplikacja ma być **wdrożona, przetestowana i odebrana przez Dział Nauki**. Każdy zespół może wybierać własne zadania lub wspierać inne zespoły; roadmapa pokazuje najbardziej potrzebne kierunki pracy.

**Stan techniczny sprawdzony 24.11.2026: `dev` nadal `e8d94872` ([ostatni CI PASS z 18.11](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850)); kluczowe PR-y są na gałęziach, nie na `dev`.** Leaderboard: audyt 18.11, z punktem wyjścia w zatwierdzonym snapshotcie z 03.11, zgodnie z [Issue #86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86).

## Zasady współpracy między zespołami

**Sześć zespołów A–F współpracuje nad jedną aplikacją.** Zachowujemy indywidualną punktację, dotychczasowych liderów i dwa terminy zajęć. Dopuszczamy wspólne realizowanie fragmentów innych zespołów: B pomaga F przy formularzach, D przy modelu PostgreSQL, C przy odbiorze uprawnień i Demo, A przy modelu finansów. Studenci i liderzy ustalają swój udział w odpowiednich Issues.

Oceniamy rzeczywisty wkład studentów — również review, testy, integrację i pomoc poza własnym zespołem — zgodnie z [zasadami oceniania](08-ocenianie.md) i [leaderboardem #86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86). Historyczny snapshot z 03.11 pozostał punktem wyjścia; nowe punkty dopisano po audycie 18.11.

## Gotowość produktu — audyt 24 listopada

| Element | Obecny stan | Co dalej |
|---|---|---|
| CI dla `dev` | `e8d94872`, CI PASS **18.11**, brak kolejnych merge | Studenci integrują #235 → #237 → #236 i powtarzają CI |
| Dostęp per projekt i Docker Demo | [PR #235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235): dwa konta A/B, F3/F4 HTML/JSON przy `DEBUG=False` — pozytywne testy **na gałęzi** i studencki APPROVE | Studencki merge i niezależny odbiór [#246](https://github.com/zio-wi-pb-mc/pb-science-office/issues/246) |
| Trwały model projektów | [PR #237](https://github.com/zio-wi-pb-mc/pb-science-office/pull/237), model PostgreSQL i testy PASS na gałęzi | Niezależne review aktualnego HEAD, rebase po #235 |
| Tworzenie/edycja | [PR #236](https://github.com/zio-wi-pb-mc/pb-science-office/pull/236), zintegrowane testy na PostgreSQL 328 PASS/2 SKIP, próba Demo HTTP PASS według PR | Aktualizacja i review po #237, dopiero potem merge |
| E — uprawnienia | [PR #240](https://github.com/zio-wi-pb-mc/pb-science-office/pull/240) nowy; #174 historyczny Draft | Nie scalać osobnej migracji `ProjectAssignment`; uzgodnić jeden kontrakt z #235 |
| F01 | Ręczny odbiór PostgreSQL w [PR #239](https://github.com/zio-wi-pb-mc/pb-science-office/pull/239): **PASS** logowanie/zapis/odczyt/404 cudzej fiszki, ale lokalnie flaky test (1 failed/240 passed/2 skipped) | Review raportu, osobna poprawka niestabilnego testu |
| Finanse | [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) ma lokalny WIP @dperkowski, bez PR i bez integracji z `dev` | Pierwszy mały PR po #237, kwoty F4 częściowo syntetyczne |
| Importer | [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216): dry-run/validacja w `dev` | Podłączenie do kanonicznego `Project`, bez drugiego modelu |
| Backup/doctor | PR #232 i #234 scalone; #230 i #196 nadal otwarte | Niezależna praktyczna próba |
| F02 | B przydzieliło [#241–#245](https://github.com/zio-wi-pb-mc/pb-science-office/issues/241) | Potwierdzić priorytet biznesowy, nie blokować pierwszego Demo |

**Stan demonstratora na 24.11: NO-GO do ogłoszenia pełnej gotowości na `dev`.** Po scaleniu krytycznych PR przez studentów i niezależnym PASS #246 można zorganizować **ograniczony pokaz** na danych syntetycznych. Finanse, importer i raporty nie są jeszcze gotowe do odbioru. Wydania `dev → main` wyłącznie prowadzący.

## Aktywność studentów — 10–18 listopada

**Historyczne zestawienie: 16 scalonych PR w okresie 10–18 listopada, 12 różnych autorów, 5 zespołów.** To nowa aktywność i realna implementacja, ale PR-y mają różny zakres. Tabela opisuje *zakończone scalenia*, nie punkty i nie indywidualne oceny.

| Zespół | Autorzy i scalone PR | Rezultat |
|---|---|---|
| **A — 4 PR** | Daniel Perkowski [PR #210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [PR #185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185), [PR #218](https://github.com/zio-wi-pb-mc/pb-science-office/pull/218); Aleksandra Masiejczyk [PR #209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209) | Referencyjne kwoty, testy i obsługa błędów |
| **B — 5 PR** | Gabriel Chomiczewski [#222](https://github.com/zio-wi-pb-mc/pb-science-office/pull/222), Karina Chilkiewicz [#223](https://github.com/zio-wi-pb-mc/pb-science-office/pull/223), Klaudia Klim [#224](https://github.com/zio-wi-pb-mc/pb-science-office/pull/224), Patrycja Choćko [#231](https://github.com/zio-wi-pb-mc/pb-science-office/pull/231), Bartłomiej Karanowski [#229](https://github.com/zio-wi-pb-mc/pb-science-office/pull/229) | Model, formularz, widoki i testy F01 |
| **C — 4 PR** | Weronika Sosnowska [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207), [#228](https://github.com/zio-wi-pb-mc/pb-science-office/pull/228); Maciej Sawicki [#232](https://github.com/zio-wi-pb-mc/pb-science-office/pull/232); Mykola Nishchymnyi [#234](https://github.com/zio-wi-pb-mc/pb-science-office/pull/234) | Konta demo, wymagania odbioru, backup/restore i doctor.py |
| **D — 2 PR** | Tomasz Sidoruk [PR #225](https://github.com/zio-wi-pb-mc/pb-science-office/pull/225), [PR #226](https://github.com/zio-wi-pb-mc/pb-science-office/pull/226) | Plan zgodności i pierwszy importer |
| **F — 1 PR** | Paweł Kozikowski [PR #211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) | Mobilny widok F3 |
| **E — bez nowego merge** | [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) pozostaje Draft | Otwarta krytyczna praca nad uprawnieniami |

**Jak to czytać:** tabela obejmuje wszystkie 16 merge z 10–18 listopada. Punkty są teraz rozliczane indywidualnie według tabeli poniżej, a nie automatycznie według liczby merge. Największe wdrożeniowe przyspieszenie nastąpiło w B i D. Zespół E ma ważne zadanie w toku, ale brak scalenia nie dowodzi braku pracy. Liczba PR nie zastępuje oceny działania produktu.

## Contribution Leaderboard — rozliczenie 18.11

Zaktualizowana punktacja z [Issue #86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86), obejmująca zatwierdzony stan z 03.11 i **nowo zaksięgowane +25 pkt**. Punkty za ukończone prace przypisujemy studentom niezależnie od tego, że prowadzący wykonał za nich wcześniejsze merge. PR scalony nie gwarantuje punktów przy niespełnionych pozostałych warunkach.

### Ranking indywidualny — audyt 18.11.2026

Zastosowano zasady S=2, M=5, L=8; poniższy przyrost nie zawiera niedokończonych Issues. Kolumny `Nowe taski` i `Nowe review` pokazują **wyłącznie przyrost rozliczony w tym audycie**, nie pełną historię aktywności.

| # | Student | GitHub | Zespół | Stan 03.11 | Nowe taski | Nowe review | Razem |
|---:|---|---|:---:|---:|---:|---:|---:|
| 1 | Weronika Sosnowska | @wersosn | C | 22 | +2 | — | **24** |
| 2 | Nazar Hrinchenko | @Grinnazar | C | 21 | — | — | **21** |
| 3 | Vladislav Matveev | @Leucist | C | 19 | — | — | **19** |
| 4 | Mykola Nishchymnyi | @kolyasiquez | C | 16 | — | — | **16** |
| 5 | Daniel Perkowski | @dperkowski | A | 14 | — | +1 | **15** |
| 5 | Maciej Sawicki | @Maciek-Sawicki | C | 15 | — | — | **15** |
| 7 | Jakub Mirończuk | @mielonxd | A | 9 | — | — | **9** |
| 7 | Klaudia Natalia Klim | @Hackeristi | B | 8 | — | +1 | **9** |
| 7 | Patrycja Choćko | @patrycjachocko | B | 6 | +2 | +1 | **9** |
| 10 | Karina Chilkiewicz | @karichil | B | 6 | +2 | — | **8** |
| 11 | Aleksandra Masiejczyk | @Olinda-M | A | 0 | +7 | — | **7** |
| 12 | Bartłomiej Karanowski | @Zapsiu | B | 6 | — | — | **6** |
| 12 | Paweł Kozikowski | @Pawelkoz201 | F | 3 | +2 | +1 | **6** |
| 14 | Gabriel Chomiczewski | @Camed | B | 2 | +2 | +1 | **5** |
| 15 | Jakub Pawlak | @NacomiTagiera | F | 2 | — | — | **2** |
| 15 | Łukasz Bondar | @lukaszbondar1 | F | 1 | — | +1 | **2** |
| 15 | Miłosz Dubowski | @Orangunio | D | 2 | — | — | **2** |
| 15 | Patryk Bura | @Patryk-Bura | F | 0 | — | +2 | **2** |
| 19 | Tomasz Sidoruk | @TS40 | D | 1 | — | — | **1** |
| 20 | Cezary Babik | @CzaroAmaro | E | 0 | — | — | **0** |
| 20 | Emilia Drewnowska | @Emili-d | E | 0 | — | — | **0** |
| 20 | Michał Borawski | @michalborawski | E | 0 | — | — | **0** |

### Ranking zespołów — po rozliczeniu

| # | Zespół | Suma | Aktywni | Punkty / osobę |
|---:|:---:|---:|---:|---:|
| 1 | C | **95** | 5 | 19.00 |
| 2 | B | **37** | 5 | 7.40 |
| 3 | A | **31** | 3 | 10.33 |
| 4 | F | **12** | 4 | 3.00 |
| 5 | D | **3** | 2 | 1.50 |
| 6 | E | **0** | 3 | 0.00 |

### Nowo przyznane punkty

| Student | Przyrost | Podstawa |
|---|---:|---|
| @wersosn | **+2** | #205 / PR #207 (S) |
| @dperkowski | **+1** | review PR #209 |
| @Hackeristi | **+1** | review PR #222 |
| @patrycjachocko | **+3** | #200 / PR #231 (S); review PR #223 |
| @karichil | **+2** | #198 / PR #223 (S) |
| @Olinda-M | **+7** | #134 / PR #136 + korekta #210 (M, jedno Issue: 5); #208 / PR #209 (S: 2) |
| @Pawelkoz201 | **+3** | #195 / PR #211 (S); review PR #218 |
| @Camed | **+3** | #197 / PR #222 (S); review PR #231 |
| @lukaszbondar1 | **+1** | review PR #211 |
| @Patryk-Bura | **+2** | review PR #207 i PR #211 |

Łącznie zaksięgowano **+25 pkt**: **17 za 7 ukończonych zadań** (6 × S oraz 1 × M) i **8 za merytoryczne review**; uwzględniono limit 3 pkt/tydzień na review. Zmiany zostały przypisane rzeczywistym autorom/assignees i recenzentom, **bez względu na to, że prowadzący wykonał za nich merge**. #195 uzupełniono o jednoznacznego assignee @Pawelkoz201. Dla zadania #134 policzono punkty **tylko raz** dla @Olinda-M, a PR #210 (korekta tego zadania przez @dperkowski) nie generuje dodatkowego drugiego taska.

### Scalone PR czekające na rozliczenie

| Issue / PR | Autor | Przyczyna i dalszy krok |
|---|---|---|
| #199 / #224 | @Hackeristi | Zamknięte, ale peer review ma charakter ogólny — potrzebna konkretna ocena implementacji/odbioru |
| #201 / #229 | @Zapsiu | Zamknięte, ale review nie odnosi się merytorycznie do testów — potrzebna konkretna ocena kodu |
| #227 / #228 | @wersosn | Zamknięte, brak studenckiego peer review — wystarczy niezależna rzeczowa recenzja |
| #167 / #185 | @dperkowski | Zamknięte, zbyt ogólne peer review — potrzebna konkretna ocena dokumentacji |
| #230 / #232 | @Maciek-Sawicki | **L=8 zatwierdzone przez prowadzącego (jawny wyjątek terminowy)**; Issue otwarte: niezależny odbiór backup/restore i peer review |
| #196 / #234 | @kolyasiquez | **M zatwierdzone przez leada**; Issue otwarte: niezależna próba narzędzia i peer review |
| #204 / #218 | @dperkowski | PR scalony, ale Issue pozostaje otwarte; po odbiorze zadania zweryfikować punkty |
| #124 / #225 | @TS40 | Issue otwarte; brak peer review, sprawdzić zakres odbioru i formalną kategorię L |
| #216 / #226 | @TS40 | Pierwszy etap importera; Issue pozostaje otwarte, brak peer review, dalszy zakres ORM |

**Rozmiary M/L:** wstępne M wpisane w treści Issue nie jest zatwierdzeniem leada. Zadania #197, #198, #200 mają w tym rozliczeniu bazowe S=2; wyższe M wymaga dowodu zatwierdzenia przez leada przed merge lub osobnej jawnej decyzji prowadzącego. Nie ma automatycznego przyznawania L po merge. Review napisane po merge można zweryfikować retrospektywnie, skoro to prowadzący wykonał merge bez udziału studentów.


## Miejsca pracy

- [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1) — aktualne przydziały i statusy.
- [Otwarte PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls) — stan 24.11: #174 (Draft), #235, #236, #237, #239, #240.
- [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues) — zadania i kryteria odbioru.
- [Bank propozycji](17-bank-zadan-mvp.md) — pomysły dla osób bez własnego zadania.
- [Roadmapa](21-roadmap-3-tygodnie.md) — cele na najbliższe tygodnie.
