# ZIO — co robić teraz

**Cel ZIO:** do **31 stycznia 2027 r.** aplikacja ma być **wdrożona, przetestowana i odebrana przez Dział Nauki**. Zespoły mogą samodzielnie wybierać zadania; wskazane Issues są propozycjami, nie przydziałami.

**Stan przeglądu: 18.11.2026**, gałąź [`dev`](https://github.com/zio-wi-pb-mc/pb-science-office/tree/dev), commit `e8d94872` ([CI PASS](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850)).

## Uzgodnienie E/F — 18 listopada

**Plan integracji:** E przygotowuje kontrolę przypisania projektu na aktualnym `dev` ([#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173)); F integruje ją z F3/F4 i częściowym [PR #235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235); C sprawdza Docker Demo z `DEBUG=False`. Użytkownik anonimowy trafia do logowania, lista filtruje projekty, a cudze szczegóły i budżety (HTML/JSON) zwracają 404. **Równolegle** trwa praca nad modelem PostgreSQL [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220) i CRUD [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221).

To **kierunki współpracy i warunki odbioru**, a nie nakaz wyboru określonych Issues. Szczegóły w [koordynacji #127](https://github.com/zio-wi-pb-mc/pb-science-office/issues/127).

## Wspólny produkt, elastyczne zespoły — od 18 listopada

**Nie łączymy organizacyjnie grup A–F.** Zachowujemy liderów, grupy zajęciowe (A–C i D–F), dotychczasową historię i indywidualne ocenianie. **Można za to pomagać w zadaniach innego zespołu** — liczy się rezultat dla wspólnej aplikacji. Zmiany zakresów uzgadniajcie między liderami i zapisujcie krótko w odpowiednim Issue, aby dwie osoby nie robiły tego samego.

**Najpilniejsze współprace:** B + F → formularze projektów [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221); D + F → model PostgreSQL [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220); E + F + C → uprawnienia i bezpieczne Demo [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173)/[#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219); A + F → zapis finansów [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214). To **propozycje podziału implementacji, nie nowe automatyczne przydziały**. D/F/E/A muszą wcześniej uzgodnić wspólny kontrakt danych projektów.

Pomoc poza własną grupą jest uwzględniana w **ocenie indywidualnego wkładu** na dotychczasowych zasadach; sama przynależność do zespołu ani współautorstwo bez rzeczywistej pracy nie daje automatycznie punktów. [Szczegóły oceniania](08-ocenianie.md).

## Najbliższy cel: działające Demo

**P0:** logowanie → lista projektów → szczegóły → budżet w Docker Demo (`DEBUG=False`), z uprawnieniami do własnych projektów i odmową dostępu do cudzych adresów HTML/JSON/budżetów.

| Status | Co to oznacza |
|---|---|
| **Działa w kodzie deweloperskim** | Logowanie i połączony przepływ F2/F3/F4; F01 ma model PostgreSQL, formularz, zapis i podgląd własnych fiszek |
| **Blokuje pokaz** | Brak uprawnień per projekt ([#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173)) i blokada F3/F4 w `DEBUG=False` ([#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219)) |
| **Następny większy krok** | Trwały model projektów i CRUD ([#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220), [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221)), finanse zapisujące do bazy ([#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214)) i importer docelowy ([#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216)) |

**CI:** [aktualny `dev` — PASS](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850). Test Docker Demo sprawdza uruchomienie, migracje, health, wersję i statyczne pliki, **nie pełny przepływ użytkownika**.

## Aktualny postęp — 18 listopada

- **F01:** model, formularz, widoki i testy scalone — [#222](https://github.com/zio-wi-pb-mc/pb-science-office/pull/222), [#223](https://github.com/zio-wi-pb-mc/pb-science-office/pull/223), [#224](https://github.com/zio-wi-pb-mc/pb-science-office/pull/224), [#229](https://github.com/zio-wi-pb-mc/pb-science-office/pull/229), [#231](https://github.com/zio-wi-pb-mc/pb-science-office/pull/231). Issues #197–#201 zamknięte. Pozostał odbiór manualny w pełnym scenariuszu PostgreSQL.
- **Infrastruktura:** [#232](https://github.com/zio-wi-pb-mc/pb-science-office/pull/232) — backup/restore, [#234](https://github.com/zio-wi-pb-mc/pb-science-office/pull/234) — diagnostyka `doctor.py`; oba w `dev`, CI PASS. Nadal potrzebny niezależny test działania.
- **Import danych i finanse:** [#226](https://github.com/zio-wi-pb-mc/pb-science-office/pull/226) — importer syntetyczny z walidacją i dry-run; [#218](https://github.com/zio-wi-pb-mc/pb-science-office/pull/218) — integracyjne testy finansów. Trwałe zapisy wymagają kolejnych zmian.
- **Dwa otwarte Drafty:** [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) (historyczne uprawnienia) i [#235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235) (częściowa obsługa `DEBUG=False`). Nie są jeszcze scalone — test dostępu dwóch użytkowników nadal pozostaje blockerem.
- **Nowe kierunki:** [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220) — model projektów w PostgreSQL, [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221) — tworzenie/edycja. Można włączyć wsparcie B/D/F, ale to propozycja współpracy, nie zmiana przydziałów.

## Wybierz swój następny krok

1. Masz własne zadanie? Kontynuuj je, sprawdź CI i zależności w [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1).
2. Nie masz pomysłu? Zajrzyj do [aktualnych priorytetów](16-propozycje-zadan-po-audycie.md) albo [banku propozycji](17-bank-zadan-mvp.md).
3. Masz lepszy pomysł? Zaproponuj go liderowi i sprawdź, czy nie dubluje istniejącego PR. Liczy się działający rezultat.

[**Plan i terminy do 31 stycznia**](23-plan-do-31-stycznia.md) · [**Roadmapa A–F**](21-roadmap-3-tygodnie.md) · [**Dashboard i leaderboard**](19-dashboard-projektu.md)

## Najbliższe terminy

| Kiedy | Co sprawdzamy |
|---|---|
| **20 listopada** | Krótkie ustalenia liderów: wspólny klucz projektu, odpowiedzialność za integrację i małe fragmenty pracy, blokery E/F/C. Nie wymagamy ukończonego Demo tego dnia |
| **24–27 listopada** | Pierwsze małe PR-y i testy w obszarach uprawnień, modelu PostgreSQL, formularzy i finansów. C przygotowuje próbę Demo z dwoma kontami |
| **1–4 grudnia** | Ocena bezpiecznego scenariusza Demo i pierwszy pokaz pracownikom Działu Nauki **w zakresie funkcji faktycznie działających**; 3 grudnia krótki przegląd skuteczności współpracy |

Do spotkania z Działem Nauki przygotowujemy listę funkcji niezbędnych do zastąpienia starego systemu. Termin końcowy projektu pozostaje bez zmian — **31 stycznia 2027 r.**

## Zasady pracy

PR studencki: `feature → dev` po review i testach. Wydanie: `dev → main` przez prowadzącego. Nie trzeba tworzyć nowych Issues tylko po to, żeby „mieć pracę”. Istniejący [leaderboard](19-dashboard-projektu.md) pokazuje punkty **formalnie rozliczone do 03.11** oraz osobno nowsze osiągnięcia — bez automatycznego naliczania za merge.

[Środowiska i uruchomienie](18-srodowiska-mvp.md) · [Audyt funkcji legacy](22-audyt-legacy-parity.md) · [Informacje podstawowe](20-informacje-podstawowe.md)
