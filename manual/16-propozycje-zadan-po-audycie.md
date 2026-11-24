# Co robić teraz — zadania do integracji i pokazu

**Audyt 24.11.2026.** `dev` nadal `e8d94872` ([CI PASS z 18.11](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850)). Otwartych jest **7 PR-ów**, w tym #174 jako stary Draft. Największe przyrosty powstały na gałęziach studenckich. **Priorytet: przenieść je bezpiecznie do `dev` i odebrać funkcjonalnie**, zamiast tworzyć nowe, konkurencyjne implementacje.

## Dla wszystkich: krytyczna ścieżka P0

| Krok | Wykonawca / źródło | Wymagany rezultat |
|---|---|---|
| 1. Demo i dostęp | **@Pawelkoz201**, [PR #235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235), [#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219) | Student scala po review i CI; dwa rozłączne konta, HTTP/JSON/404 przy `DEBUG=False` |
| 2. Projekty w PostgreSQL | **@lukaszbondar1**, [PR #237](https://github.com/zio-wi-pb-mc/pb-science-office/pull/237), [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220) | Review aktualnego HEAD, po #235 rebase/CI i studencki merge; jeden kanoniczny model i migracja |
| 3. Operator i CRUD | **@Patryk-Bura**, [PR #236](https://github.com/zio-wi-pb-mc/pb-science-office/pull/236), [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221) | Po #237 odświeżyć gałąź, CI, peer review; utwórz/edytuj/zapisz/odczytaj w nowej sesji |
| 4. Jeden kontrakt E/F | **@CzaroAmaro**, [PR #240](https://github.com/zio-wi-pb-mc/pb-science-office/pull/240), [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) | Nie powielać `accounts.ProjectAssignment` i migracji z #235. Wyodrębnić tylko unikalny wkład E, zatwierdzić zakres ról i odmowy |
| 5. Niezależny odbiór | **@Grinnazar**, [#246](https://github.com/zio-wi-pb-mc/pb-science-office/issues/246), koordynacja [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) | Docker Demo na zintegrowanym `dev` po #235/#237/#236: scenariusz dwóch kont i operatora, raport GO/NO-GO |

**Nie scalajcie #240 obok #235 jako drugiego modelu przypisań.** #174 pozostaje historycznym Draftem do `main`; nie mieszać go z bieżącym `dev`. **Merge studenckich PR do `dev` wykonują wyłącznie studenci**. `dev → main` tylko prowadzący.

## Równoległe zadania bez blokowania Demo

| Obszar | Osoba i Issue | Najbliższy mały rezultat |
|---|---|---|
| A — finanse | **@dperkowski** [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) | Przygotować Draft PR na uzgodnionym HEAD #237 już teraz: plan, rezerwacja, wydatek, saldo z PostgreSQL po ponownym odczycie. Nie reklamować jako ukończonego modułu finansów |
| A — raporty | **@mielonxd** [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) | 1–2 kluczowe raporty do potwierdzenia u użytkownika, później CSV; nie tworzyć eksportu fikcyjnych danych jako odbioru |
| B — F02 | **@Camed** #241, **@karichil** #242, **@Hackeristi** #243, **@patrycjachocko** #244, **@Zapsiu** #245 | Zadania mają wykonawców. Praca równoległa; brak potwierdzenia przez Dział Nauki, że F02 jest teraz MUST. Nie przebudowywać F01 ani opóźniać integracji F |
| C — F01 | **@wersosn** [#238](https://github.com/zio-wi-pb-mc/pb-science-office/issues/238), [PR #239](https://github.com/zio-wi-pb-mc/pb-science-office/pull/239) | Raport ręczny **PASS**, ale zaznaczony flaky test timestampów (1 failed lokalnie). Po review studencki merge raportu; osobno mały fix bez maskowania błędu |
| C — operacje | **@Maciek-Sawicki** [#230](https://github.com/zio-wi-pb-mc/pb-science-office/issues/230); **@kolyasiquez** [#196](https://github.com/zio-wi-pb-mc/pb-science-office/issues/196) | Niezależna próba backup/restore i doctor na odtwarzalnym środowisku; zamknąć po kryteriach odbioru |
| C — ograniczone konto DB | **@Leucist** [#233](https://github.com/zio-wi-pb-mc/pb-science-office/issues/233) | [PR #247](https://github.com/zio-wi-pb-mc/pb-science-office/pull/247): konflikt i CI FAIL (4 joby); poprawić inicjalizację, start i backup/restore. Konta admin/runtime bez podnoszenia praw aplikacji; nie blokuje pierwszego Demo, ale potrzebne przed wdrożeniem |
| D — importer | **@TS40** [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) | Adapter do `projects.Project` z #237; walidacja, idempotentny drugi przebieg, raport liczby rekordów i sum, bez danych rzeczywistych |
| E — role | **@Emili-d** [#181](https://github.com/zio-wi-pb-mc/pb-science-office/issues/181); **@michalborawski / @Emili-d** [#120](https://github.com/zio-wi-pb-mc/pb-science-office/issues/120) | Przenieść uzgodnione scenariusze 403/404 i rolę operatora do wspólnego kontraktu z F; nie tworzyć drugiej implementacji |

## Praca równoległa

A i D mogą już przygotowywać przyrosty na uzgodnionym HEAD #237, C rozpocząć próbny odbiór zintegrowanej gałęzi #236, a B pomóc w niezależnym review formularzy CRUD. Zależne PR-y oznaczamy jako Draft z podanym SHA bazowym; po integracji aktualizujemy je do `dev` i ponawiamy CI. Końcowy odbiór dotyczy zintegrowanego `dev`. Zachowujemy właścicieli zadań i indywidualne rozliczenie wkładu. C równolegle przygotowuje wspólne środowisko testowe (#217); dostępność serwera uczelni pozostaje do uzgodnienia.

## Kiedy gotowość do pokazu?

**Orientacyjnie przełom listopada i grudnia**, ale tylko po opublikowaniu do `dev` i niezależnym **PASS w #246**. Pierwsze Demo może obejmować logowanie, dwie role/użytkowników, projekty PostgreSQL, podstawowe tworzenie/edycję i F01. **Nie prezentujemy jako gotowych**: finansów na trwałych operacjach, pełnego importera legacy, raportów i wszystkich formularzy.

### Praktyczna reguła

Mały PR → merytoryczny review → zielone CI → **student wykonuje merge do `dev`** → C sprawdza produkt w Docker Demo → krótki raport PASS/FAIL. Nie zakładać Issues dla samego „postępu”; skupić się na działających funkcjach.

[Start](index.md) · [Dashboard i leaderboard](19-dashboard-projektu.md) · [Roadmapa](21-roadmap-3-tygodnie.md) · [Plan do 31 stycznia](23-plan-do-31-stycznia.md)
