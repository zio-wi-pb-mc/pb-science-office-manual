# ZIO — co robić teraz

**Cel projektu:** do **31 stycznia 2027 r.** dostarczamy **wdrożoną, przetestowaną i odebraną przez Dział Nauki aplikację** zastępującą uzgodniony zakres starego systemu. Zespoły samodzielnie wybierają zadania i rozwiązania; roadmapa oraz Issues są propozycjami pomagającymi zaplanować pracę.


## Plan i aktualne zadania

- **[Harmonogram projektu](23-plan-do-31-stycznia.md)** — terminy prac, wdrożenia i odbioru.
- **[Audyt legacy → Django: funkcje, luki, odpowiedzialni](22-audyt-legacy-parity.md)** — 27 obszarów starej aplikacji porównanych z kodem `dev`, odróżnienie potwierdzonego legacy od nowych formularzy.

## Aktualny stan — 10 listopada

**Wykonane:** [#90](https://github.com/zio-wi-pb-mc/pb-science-office/pull/90) — v0.1.0 w `main`; [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) — logowanie → projekty → budżet w `dev`; [#203](https://github.com/zio-wi-pb-mc/pb-science-office/pull/203) — objaśnienia kwot; [#188](https://github.com/zio-wi-pb-mc/pb-science-office/pull/188) — staging. Wszystkie te PR są scalone.

**Niedostarczone:** trwałe dane i edycja projektów (dziś sześć `SyntheticProject`), zapis rezerwacji i wydatków, dostęp do własnych projektów, pełne Demo `DEBUG=False`, migracja, raporty i wiele operacji starego systemu. Sama liczba łączonych PR **nie oznacza** zgodności 1:1 z legacy.

## Propozycje najważniejszych obszarów — od teraz

| Priorytet obszaru | Przykładowy kierunek pracy | Proponowane zespoły |
|---|---|---|
| **1. Natychmiast** | [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173): dostęp obiektowy + [#205](https://github.com/zio-wi-pb-mc/pb-science-office/issues/205): bezpieczne konta Demo; pełny test `DEBUG=False` | E/C/F |
| **2. Do 20.11** | Uzgodnienie funkcji MUST z Działem Nauki na podstawie [audytu](22-audyt-legacy-parity.md) | Prowadzący + liderzy |
| **3. Do 04.12** | [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213): baza projektów, migracje i CRUD | F + D |
| **4. Do 11.12** | [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201): działająca fiszka F01 | B + F |
| **5. Do 18.12** | [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214): zapis finansów, rezerwacje, wydatki, korekty | A + F |
| **6. Do 08.01** | [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215): raporty i CSV; [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216): importer z testem zgodności | A/D/F |
| **7. Do 31.01** | [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217): odbiór przez pracowników, backup, instrukcje, ostateczny release | C/E/F + prowadzący |

**[Otwórz plan z podziałem A–F](21-roadmap-3-tygodnie.md)** · **[Co robić teraz](16-propozycje-zadan-po-audycie.md)** · **[Bank bez duplikowania pracy](17-bank-zadan-mvp.md)**

## Prace oczekujące na integrację

7 otwartych PR na czas audytu: [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209), [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185), [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207), [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211), [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174), [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132). Studenci/liderzy odpowiadają za scalanie do `dev`; prowadzący odpowiada za wydania `dev → main`. **Nie wyprzedzać starymi PR aktualnego kodu.**

## Leaderboard — nie utożsamiać z postępem produktu

**Ostatni formalny snapshot: 03.11.2026** (TOP 5: Weronika Sosnowska 22, Nazar Hrinchenko 21, Vladislav Matveev 19, Mykola Nishchymnyi 16, Maciej Sawicki 15). Nie dopisano punktów za merge bez weryfikacji reguł [#86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86). Rankingu nie należy traktować jako procentu ukończenia projektu ani oceny wkładu w ostatnich dniach.

[**Pełny dashboard i kolejka do rozliczenia**](19-dashboard-projektu.md) · [Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1)

## Jak pracujemy

Przed pracą sprawdź [Issue](https://github.com/zio-wi-pb-mc/pb-science-office/issues) i [otwarte PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls). Wybierz **najbliższy brak działającego produktu**, nie nowe Discovery. Jeden rezultat = kod/test/eksport/import/ekran, działający od czystego klona i możliwy do pokazania. Normalne PR: `feature → dev`. Wydania: `dev → main` tylko przez prowadzącego, **nie usuwać `dev` po merge**.

[Informacje podstawowe](20-informacje-podstawowe.md) · [Środowiska](18-srodowiska-mvp.md)
