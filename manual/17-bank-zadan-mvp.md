# Bank zadań — tylko luki produktu

**Stan zweryfikowany w GitHub: 10.11.2026.** Statusy zmieniają się wraz z PR-ami; ostatecznym źródłem są [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1), [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues) i [PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls).

**To propozycje rezerwowe, a nie automatyczny przydział.** Najpierw realizuj [P0 i zadania własnego zespołu](16-propozycje-zadan-po-audycie.md). Na `dev` są już logowanie (#180), integracja F2/F3/F4 (#212), objaśnienia F4 (#203) i Docker Demo (#193). Nie twórz ich ponownie.

## P0 — rzeczywiste blokery

| Kierunek | Co należy sprawdzić / dostarczyć | Istniejący właściciel |
|---|---|---|
| Autoryzacja obiektowa | Użytkownik A nie widzi projektu ani budżetu B przez żaden URL, HTML czy JSON | E: [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173), [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) |
| Pełny scenariusz Demo | `DEBUG=False`, Postgres, dwa konta, login → lista → szczegóły → budżet; test nie kończy się na health | C + F: [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207), [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) |
| Pierwszy formularz | Realny F01 z jednym modelem, zapisem, walidacją, stroną i testami | B: [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) |

## P1 — po odblokowaniu P0

| Kierunek | Zakres | Istniejąca praca |
|---|---|---|
| Finanse / A | Potwierdzenie kwot z rezerwy, niepokryte testami przypadki salda, spójny projekt i rok | [#204](https://github.com/zio-wi-pb-mc/pb-science-office/issues/204), [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210) |
| UX i błędy / A + F | Konkretnie zgłoszone błędy 403/404/500, mobilne F3 po integracji | [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209), [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) |
| Legacy / D | Jeden mały aktualny plan i wykonywalna próba parity; bez starego PR 108 plików | [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132), [#124](https://github.com/zio-wi-pb-mc/pb-science-office/issues/124) |
| Dokumentacja / A | Zamknąć istniejące [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185) po review; nowa dokumentacja wyłącznie jeśli odblokowuje kod | [#167](https://github.com/zio-wi-pb-mc/pb-science-office/issues/167) |
| Narzędzia / C | `doctor`, skanery lub dodatkowe CI tylko gdy istnieje realny błąd lub blocker | [#196](https://github.com/zio-wi-pb-mc/pb-science-office/issues/196) — opcjonalne |

## Zanim założysz nowe Issue

1. Sprawdź [Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1), [otwarte PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls) oraz Issues.
2. Ustal, czy praca nie jest już w PR lub przypisana innej osobie. **APPROVE ≠ MERGED**.
3. Podaj jednego właściciela, działający rezultat i instrukcję odbioru.
4. Wybierz najmniejszą potrzebną zmianę. Bez tworzenia zadania tylko po to, żeby ktoś miał zajęcie.
5. PR z feature branch do `dev`, nie do `main`; student/lead odpowiada za integrację, prowadzący za release.

[Roadmap](21-roadmap-3-tygodnie.md) · [Dashboard](19-dashboard-projektu.md)
