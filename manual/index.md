# ZIO — co robić teraz

**Stan zweryfikowany w GitHub: 10.11.2026.** Statusy zmieniają się wraz z PR-ami; ostatecznym źródłem są [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1), [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues) i [PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls).

!!! important "Priorytet: działający produkt, nie liczba zadań"
    Do końca najbliższego etapu chcemy uruchomić i pokazać **jedną aplikację Django**: logowanie → lista projektów → szczegóły → budżet właściwego projektu. Musi też odmawiać dostępu do cudzych projektów i działać w Demo z `DEBUG=False`. Potem integrujemy pierwszy formularz F01.

## Aktualność — 10 listopada: działający przepływ coraz bliżej

- **Wykonane:** [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) scalił integrację F2 → F3 → F4 (nawigacja, ochrona przed anonimowym dostępem, test przepływu); [#203](https://github.com/zio-wi-pb-mc/pb-science-office/pull/203) dodał objaśnienia kwot F4; [#188](https://github.com/zio-wi-pb-mc/pb-science-office/pull/188) procedurę Shared Staging. Wcześniej [#180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180), [#193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193), [#192](https://github.com/zio-wi-pb-mc/pb-science-office/pull/192) i [#163](https://github.com/zio-wi-pb-mc/pb-science-office/pull/163) weszły do `dev`.
- **Wydanie:** [#90](https://github.com/zio-wi-pb-mc/pb-science-office/pull/90) (v0.1.0) jest już w `main`; to wydanie rozwojowe. Aktualny rozwój trwa w [`dev`](https://github.com/zio-wi-pb-mc/pb-science-office/tree/dev), **nie** bezpośrednio w `main`.
- **Największa luka:** [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) / [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) — dostępu do projektu nie wolno ograniczać tylko do zalogowania. Trzeba weryfikować *przypisanie użytkownika do danego projektu* na serwerze, także po wejściu przez bezpośredni URL i dla JSON/budżetu.
- **Demo:** zielony CI nie zastępuje sprawdzenia całej ścieżki w obrazie z `DEBUG=False`.

## Na najbliższe zajęcia

| Priorytet | Właściciel / praca | Co należy dowieźć |
|---|---|---|
| **P0** | **E + F** · [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) / [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) | Serwerowe uprawnienia do listy, szczegółów, JSON i budżetu; test użytkownika A/B |
| **P0** | **C + F** · [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) | Bezpieczne konta Demo; `DEBUG=False`; pełny scenariusz od zalogowania do budżetu |
| **P0/P1** | **B** · [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) | Jeden działający formularz F01: model, walidacja, UI, testy |
| **P1** | **F** · [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) | Rozwiązać konflikt z `dev` po #212 i domknąć mobilne F3 |
| **P1** | **A** · [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209), [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [#204](https://github.com/zio-wi-pb-mc/pb-science-office/issues/204) | Błędy 403/404/500, poprawne przykłady finansów, brakujące przypadki |
| **P1** | **D** · [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132) | Mały aktualny PR do `dev` zamiast konfliktowego PR do `main` |

**Otwarte PR z review:** [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209), [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185), [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207), [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211), [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174), [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132). **APPROVE nie oznacza MERGED**; autorzy/liderzy integrują do `dev`.

[**Roadmap — plan i kryteria odbioru**](21-roadmap-3-tygodnie.md) · [**Aktualne zadania A–F**](16-propozycje-zadan-po-audycie.md) · [**Dashboard i leaderboard**](19-dashboard-projektu.md)

## Leaderboard — ostatni zatwierdzony snapshot (03.11)

**Punkty nie są jeszcze przeliczone na 10.11.** Zachowujemy wynik z [#86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86), dopóki nie zostaną indywidualnie zweryfikowane zamknięcia Issues, peer review, rozmiary i limity tygodniowe. Nowe scalenia **nie oznaczają automatycznie** nowych punktów.

| # | Student | Zespół | Punkty (03.11) |
|---:|---|:---:|---:|
| 1 | Weronika Sosnowska | C | **22** |
| 2 | Nazar Hrinchenko | C | **21** |
| 3 | Vladislav Matveev | C | **19** |
| 4 | Mykola Nishchymnyi | C | **16** |
| 5 | Maciej Sawicki | C | **15** |

[Pełna tabela i nierozliczone PR](19-dashboard-projektu.md)

## Jak postępować

1. Otwórz [Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1) i sprawdź własny Issue oraz blokery.
2. Jeśli masz APPROVE, sprawdź konflikt i CI, a następnie uzgodnij merge do `dev` z liderem.
3. Jeśli skończyłeś pracę, nie otwieraj nowej analizy dla samej aktywności — dołącz do istniejącego P0.
4. Gałęzie: **`feature → dev`** (studenci), **`dev → main`** (wydanie przez prowadzącego). Nie usuwajcie `dev`.

[Informacje podstawowe](20-informacje-podstawowe.md) · [Środowiska](18-srodowiska-mvp.md) · [Bank propozycji](17-bank-zadan-mvp.md)
