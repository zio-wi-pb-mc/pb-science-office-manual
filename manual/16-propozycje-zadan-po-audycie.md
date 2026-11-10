# Co robić teraz — priorytety i odpowiedzialność

**Stan zweryfikowany w GitHub: 10.11.2026.** Statusy zmieniają się wraz z PR-ami; ostatecznym źródłem są [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1), [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues) i [PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls).

**P0 do odbioru:** zalogowany użytkownik A widzi własny projekt i budżet, nie widzi projektów użytkownika B nawet przez ręcznie wpisany URL; użytkownik anonimowy nie ma dostępu. Ten sam przepływ działa w Demo (`DEBUG=False`) na PostgreSQL.

## Stan funkcjonalności

| Obszar | Potwierdzone | Pozostaje |
|---|---|---|
| Auth / F2 | [#180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180) MERGED | Przypisanie do projektów nie jest jeszcze egzekwowane dla wszystkich widoków |
| F2 → F3 → F4 | [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) MERGED 09.11 — nawigacja i test przepływu | Cały przebieg w Demo `DEBUG=False` i przypadki autoryzacji obiektowej |
| Budżet | [#192](https://github.com/zio-wi-pb-mc/pb-science-office/pull/192) i [#203](https://github.com/zio-wi-pb-mc/pb-science-office/pull/203) MERGED | Testy na danych dwóch użytkowników; review [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210) |
| Docker / staging | [#193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193) i [#188](https://github.com/zio-wi-pb-mc/pb-science-office/pull/188) MERGED | Funkcjonalne Demo, nie tylko `/health/` oraz `/version/` |
| Release | [#90](https://github.com/zio-wi-pb-mc/pb-science-office/pull/90) MERGED do `main` | Następne wydanie dopiero po akceptacji prowadzącego |
| Uprawnienia | [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) otwarty Draft, błędna baza `main` | Przenieść na współczesny `dev`, unikając nadpisania #212 |
| Formularz F01 | [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) w toku | Wspólna integracja formularza i test od stworzenia do odczytu |

## Zespoły — aktualny przydział kierunku

| Zespół / lead | PRIMARY | BACKUP, jeśli brak blokerów |
|---|---|---|
| **A — Daniel Perkowski** | [#204](https://github.com/zio-wi-pb-mc/pb-science-office/issues/204): rzeczywiste przypadki finansowe F4; [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209) — ekran 403/404/500 | [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210) + [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185) — domknąć review i integrację, bez następnej wielkiej analizy |
| **B — Karina Chilkiewicz** | [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201): jeden formularz F01; doprowadzić model, walidację, widoki i testy do integracji | Test działania F01 po zalogowaniu, poprawki użyteczności |
| **C — Vladislav Matveev** | [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) / [#205](https://github.com/zio-wi-pb-mc/pb-science-office/issues/205): bezpieczne konta demo i uruchomienie pełnego Demo z `DEBUG=False` | Wspólny test funkcjonalny z F/E; narzędzie doctor [#196](https://github.com/zio-wi-pb-mc/pb-science-office/issues/196) tylko gdy usuwa realny problem |
| **D — Tomasz Sidoruk** | [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132) / [#124](https://github.com/zio-wi-pb-mc/pb-science-office/issues/124): przenieść wartościowy fragment planu do małego PR `dev`; następnie pierwszy wykonywalny test zgodności | Minimalny importer jednego syntetycznego przypadku, po potwierdzeniu zakresu |
| **E — Michał Borawski / Cezary Babik** | [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) / [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174): obiektowe uprawnienia F3/F4 i serwerowe odmowy | Scenariusze dostępu [#181](https://github.com/zio-wi-pb-mc/pb-science-office/issues/181) z dwoma kontami i dwoma projektami |
| **F — Paweł Kozikowski** | Odebrać #212 i zintegrować E/C: pełny przepływ Demo z testem | [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211): mobilne F3 po rozwiązaniu konfliktu; [#155](https://github.com/zio-wi-pb-mc/pb-science-office/issues/155) — aktualizacja kryteriów |

**Nie przydzielamy dodatkowych zadań tylko po to, żeby każdy miał PR.** Lider po każdym merge sprawdza własny backlog i najbliższy P0. Koordynacja między zespołami jest ważniejsza niż własność pojedynczego pliku.

## Otwarte PR — stan LIVE 10.11

| PR | Autor | Stan | Następny ruch |
|---|---|---|---|
| [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209) | Aleksandra Masiejczyk (A) | OPEN, APPROVE z review | Autor/lider może scalić do `dev` po sprawdzeniu CI i konfliktów |
| [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210) | Daniel Perkowski (A) | OPEN, APPROVE | Potwierdzić kwoty z F4; potem merge `dev` |
| [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185) | Daniel Perkowski (A) | OPEN, APPROVE | Krótki merge `dev`, bez poszerzania zakresu |
| [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) | Weronika Sosnowska (C) | OPEN, APPROVE warunkowe | **Usunąć `TEST_USER_PASSWORD=password` z `.env.example`**, sprawdzić bezpieczne Demo, potem merge |
| [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) | Paweł Kozikowski (F) | OPEN, APPROVE | Usunąć konflikt z aktualnym `dev` po #212, ponowić CI |
| [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) | Cezary Babik (E) | OPEN, Draft do `main` | Przenieść uprawnienia na aktualny `dev` bez nadpisania F3/F4 |
| [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132) | Tomasz Sidoruk (D) | OPEN do `main` | Mały nowy PR do `dev`; stary zamknąć po migracji treści |

Na dzień sprawdzenia **7 otwartych PR, bez nowego merge**. APPROVE ≠ MERGED. Właściwy tryb: student i lead realizują merge do `dev`; prowadzący zatwierdza tylko wydania do `main`.

## Kryteria odbioru najbliższego kamienia milowego

1. `docker compose` startuje w Demo z `DEBUG=False`, `/health/` jest zielone i użytkownik może zalogować się testowym kontem.
2. Użytkownik A widzi na liście tylko przypisane projekty; szczegóły i budżet B są odrzucane po bezpośrednim URL (także API/JSON).
3. Ten sam identyfikator projektu i rok są zachowane od listy do budżetu; dane nie są mieszane.
4. Testy na PostgreSQL przechodzą; wykonać także przynajmniej jeden test przepływu HTTP/E2E, a nie wyłącznie unit tests i smoke `/health/`.
5. F01 ma działać w obrębie tej samej aplikacji bez nowych frameworków i bez sztucznego dublowania istniejących modeli.

[Roadmap](21-roadmap-3-tygodnie.md) · [Dashboard](19-dashboard-projektu.md) · [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues)
