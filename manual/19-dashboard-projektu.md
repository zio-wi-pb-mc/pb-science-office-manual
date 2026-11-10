# Dashboard projektu i leaderboard

!!! warning "Stan produktu ≠ punktacja / deadline 31.01.2027"
    Ranking punktów pochodzi z **ostatniego formalnego rozliczenia 03.11**; nie jest wykresem wykonania legacy. Dla postępu projektu stosujemy [macierz funkcji](22-audyt-legacy-parity.md) i [bramki do 31 stycznia](23-plan-do-31-stycznia.md). Nie zmieniono punktacji bez pełnego rozliczenia wg #86.

## Product delivery — kontrola 10.11

| Obszar | Status w kodzie | Następna bramka |
|---|---|---|
| F2 → F3 → F4 | [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) MERGED do `dev` | Demo `DEBUG=False` i zakres użytkownika |
| Bezpieczeństwo projektów | [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) OPEN, [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) Draft | 13.11, test A/B + HTML/JSON/budżet |
| Projekty w PostgreSQL | `SyntheticProject`, nie trwały CRUD | [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) do 04.12 |
| Operacje finansowe | Podgląd i testy bez ewidencji zapisów | [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) do 18.12 |
| F01 | [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) IN PROGRESS | 11.12 |
| Eksporty / raporty | Brak implementacji pełnych raportów | [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) do 08.01 |
| Migracja legacy | Brak potwierdzonej migracji do modeli Django | [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) do 08.01 |
| Odbiór i przekazanie | Zaplanowane, nie wykonane | [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) do 31.01 |

**Nie podajemy fikcyjnego procentu ukończenia systemu.** Przyjęcie kryteriów MUST z Działem Nauki do 20.11 warunkuje wiarygodną ocenę zakresu.



Ta strona zbiera najważniejsze miejsca do codziennej pracy nad projektem.

## Contribution Leaderboard

**Ostatnie formalnie zweryfikowane przeliczenie punktów: 03.11.2026. Aktualizacja stanu PR/Issues: 10.11.2026.** Punktów nie doliczono automatycznie za nowe PR, bo [reguły #86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86) wymagają indywidualnej weryfikacji.

**Weryfikacja LIVE 10.11:** PR #180, #192, #193, #188, #163, #203, #212 są już **MERGED**. To jednak **nie oznacza przyznania punktów**: dla każdego zadania trzeba sprawdzić Issue, pojedynczego Assignee, merytoryczne review, datę zatwierdzenia rozmiaru i tygodniowy limit. APPROVE dla #209/#210/#185/#207/#211 nie jest merge.

!!! important "Punkty ≠ automatyczna ocena"
    Ranking jest narzędziem motywacyjnym. Pokazuje punkty formalnie rozliczone według zasad z #86.

### Ranking indywidualny — od początku semestru

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

### Ranking zespołów

Ranking zespołowy = suma punktów aktywnych członków / liczba aktywnych członków.

| # | Zespół | Suma punktów | Aktywni | Punkty / osobę |
|---:|:---:|---:|---:|---:|
| 1 | C | **93** | 5 | **18.60** |
| 2 | A | **23** | 3 | **7.67** |
| 3 | B | **28** | 5 | **5.60** |
| 4 | D | **3** | 2 | **1.50** |
| 4 | F | **6** | 4 | **1.50** |
| 6 | E | **0** | 3 | **0.00** |

### Co zostało uwzględnione od poprzedniego snapshotu

W bieżącym przeliczeniu uwzględniono także prace rozliczone po 28.10, m.in.:

- #157 / #156 — stabilizacja i weryfikacja skeletonu,
- #161 / #160 — testy niezmienności agregacji F4,
- #182 / #166 — testy zgodności HTML/JSON F4,
- #184 / #183 — endpoint wersji aplikacji,
- oraz review tych prac, o ile spełniały zasady #86.

### Nowe prace wymagające rozliczenia według #86

To **kolejka do weryfikacji**, nie automatycznie przyznane punkty. Zmiana statusu PR/Issue nie przesądza o wyniku.

| PR / Issue | Autor / zespół | Stan na 10.11 | Co zweryfikować |
|---|---|---|---|
| [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) / [#194](https://github.com/zio-wi-pb-mc/pb-science-office/issues/194) | Patryk Bura / F | MERGED, Issue zamknięte | Student peer review, zgodność autora/assignee, rozmiar |
| [#203](https://github.com/zio-wi-pb-mc/pb-science-office/pull/203) / [#202](https://github.com/zio-wi-pb-mc/pb-science-office/issues/202) | Jakub Mirończuk / A | MERGED, Issue zamknięte | Review i rozmiar zadania |
| [#192](https://github.com/zio-wi-pb-mc/pb-science-office/pull/192) / [#191](https://github.com/zio-wi-pb-mc/pb-science-office/issues/191) | Aleksandra Masiejczyk / A | MERGED, Issue zamknięte | Review i reguły rozliczenia |
| [#163](https://github.com/zio-wi-pb-mc/pb-science-office/pull/163) / [#162](https://github.com/zio-wi-pb-mc/pb-science-office/issues/162) | Aleksandra Masiejczyk / A | MERGED, Issue zamknięte | Review i reguły rozliczenia |
| [#188](https://github.com/zio-wi-pb-mc/pb-science-office/pull/188) / [#187](https://github.com/zio-wi-pb-mc/pb-science-office/issues/187) | Mykola Nishchymnyi / C | MERGED, Issue zamknięte | Merytoryczne review i reguły |
| [#193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193) / [#190](https://github.com/zio-wi-pb-mc/pb-science-office/issues/190) | Maciej Sawicki / C | MERGED, Issue zamknięte | Merytoryczne review i reguły |
| [#180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180) / [#113](https://github.com/zio-wi-pb-mc/pb-science-office/issues/113) | Patryk Bura / F | MERGED, Issue zamknięte | Merytoryczne review i reguły |
| [#136](https://github.com/zio-wi-pb-mc/pb-science-office/pull/136) / [#134](https://github.com/zio-wi-pb-mc/pb-science-office/issues/134) | Aleksandra Masiejczyk / A | MERGED, Issue **nadal otwarte** | Domknięcie kryteriów; bez punktów za task |
| [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209) / [#208](https://github.com/zio-wi-pb-mc/pb-science-office/issues/208) | Aleksandra Masiejczyk / A | APPROVE, ale PR **OPEN** | Bez punktów tasku przed merge i zamknięciem Issue |
| [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) / [#205](https://github.com/zio-wi-pb-mc/pb-science-office/issues/205) | Weronika Sosnowska / C | APPROVE, ale PR **OPEN** | Bez punktów tasku przed usunięciem ryzyka hasła, merge i zamknięciem Issue |

**Starsze nierozliczone przypadki z poprzedniego snapshotu (#164/#125, #117/#116, #123/#120, #105/#79, #88/#87, #63/#30, #29/#20, #27/#26) wymagają oddzielnej weryfikacji i nie zostały przeliczone.** Uwaga: #81 jest już zamknięte, więc wcześniejszy powód odmowy punktów dla #99/#81 nie jest aktualny; inne warunki nadal należy sprawdzić.

### Bieżąca praca niepunktowana jako ukończona (10.11)

**7 otwartych PR:** [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209), [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185), [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207), [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211), [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174), [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132). Spośród nich pięć ma APPROVE, a #174 i #132 wymagają przebudowy/zmiany bazy. To nie są ukończone zadania.

[**Pełne zasady i historia naliczeń — Issue #86**](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86)

### Zasady punktacji w skrócie

| Wkład | Punkty |
|---|---:|
| Zadanie S — rozmiar domyślny | 2 |
| Zadanie M — zatwierdzone przed merge | 5 |
| Zadanie L — zatwierdzone przez prowadzącego przed merge | 8 |
| Merytoryczne peer review | +1 |

Najważniejsze:
- zadanie musi mieć zamknięte Issue, jednego właściwego Assignee, merge i merytoryczne peer review,
- M/L musi zostać zatwierdzone **przed mergem**,
- zatwierdzenie rozmiaru po merge nie działa wstecz,
- review: maksymalnie 3 pkt na tydzień,
- samo kliknięcie Approve bez merytorycznej treści nie gwarantuje punktu.

---

## Jak aktualizować ranking bez zawyżania

1. Odczytać każde MERGED PR i jego Issue, autora oraz jednego właściwego assignee.
2. Sprawdzić merytoryczne studenckie review (samo Approve prowadzącego nie wystarczy), zatwierdzenie M/L **przed** merge i maksymalnie 3 punkty za review w tygodniu.
3. Dodać punkty dopiero po spełnieniu **wszystkich** reguł z #86; opublikować nowy snapshot jednocześnie tutaj i w Issue #86.
4. Do tego czasu powyższe liczby 03.11 są **historycznym snapshotem**, a nie oceną obecnego wkładu. W szczególności 0 punktów obok studenta nie oznacza braku pracy.

## Jak rozliczać wkład do stycznia

- Punkty z 03.11 nie zostały automatycznie przeliczone; dodatkowe Issues #213–#217 są strumieniami dostawy, **nie premią punktową**.
- Przed aktualizacją wyniku sprawdź autora/assignee, merged PR, zamknięte Issue, merytoryczne peer review, zatwierdzony przed merge rozmiar oraz limit 3 pkt review tygodniowo.
- Oddziel przyznanie punktów od odebrania funkcji: dopiero działający rezultat w jednym systemie realizuje bramkę.
- Ocena pracy nie wynika z pozycji w rankingu: studenci muszą mieć szansę pokazać realny wkład.

## GitHub Project — główna tablica pracy

[**Otwórz GitHub Project — ZIO 2026 / PB Science Office**](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1)

GitHub Project jest podstawowym widokiem bieżącej pracy:

- `BACKLOG`,
- `READY`,
- `IN PROGRESS`,
- `REVIEW`,
- `TEST`,
- `BLOCKED`,
- `DONE`.

Przed rozpoczęciem nowego zadania sprawdź tablicę, Issues i otwarte Pull Requesty.

## Najważniejsze skróty

- [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1)
- [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues)
- [Pull Requests](https://github.com/zio-wi-pb-mc/pb-science-office/pulls)
- [Contribution Leaderboard #86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86)
- [Stan projektu i priorytety](16-propozycje-zadan-po-audycie.md)
- [Bank możliwych zadań MVP](17-bank-zadan-mvp.md)

!!! important "Źródło prawdy"
    Dla statusu pracy źródłem prawdy są GitHub Project, Issues i Pull Requests. GitHub Pages pokazuje bieżący snapshot punktów i zasady organizacyjne.
