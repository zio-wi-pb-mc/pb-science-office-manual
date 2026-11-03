# Co robić teraz — stan projektu i priorytety

**Stan na: 03.11.2026**  
**Źródło prawdy:** GitHub Issues, Pull Requests i GitHub Project mają pierwszeństwo przed tą stroną. Szybkie linki są na stronie [Dashboard projektu i leaderboard](19-dashboard-projektu.md).

!!! important "Etap projektu"
    Projekt wychodzi z szerokiego Discovery. Priorytetem są teraz **działający kod, testy, integracja, migracja danych i usuwanie blokad MVP**.

    Zespoły A–F określają główny obszar odpowiedzialności, ale **nie są sztywnymi silosami**. Jeżeli ktoś kończy pracę w swoim obszarze, powinien pomóc tam, gdzie najbardziej przyspieszy wspólny produkt.

## Najbliższy cel produktu

Najważniejszy wspólny przepływ:

`logowanie testowe → lista projektów → szczegóły projektu → budżet`

Ma działać:

- w jednej aplikacji,
- po czystym klonie repozytorium,
- na danych syntetycznych,
- z PostgreSQL,
- z testami automatycznymi,
- bez ręcznego poprawiania konfiguracji.

Po jego ustabilizowaniu dokładamy **pierwszy mały formularz/proces**.

## Najbliższy checkpoint — aktualny na 03.11

1. **Fundament F1 #157 jest już scalony** — nie rozpoczynaj go ponownie.
2. **F2 / logowanie: [PR #180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180)** — APPROVE prowadzącego, CI PASS, istnieje merytoryczne review z testem clean clone. Oczekuje na końcowe zatwierdzenie studenckie i integrację do `dev`.
3. **Local Demo: [PR #193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193)** — APPROVE prowadzącego, CI PASS (w tym test obrazu). Potrzebny niezależny test Demo od czystego klona oraz integracja.
4. **F3/F4: [Issue #155](https://github.com/zio-wi-pb-mc/pb-science-office/issues/155)** — uzupełnić odbiór wspólnego przepływu projekt → szczegóły → budżet, także przypadki brzegowe; [PR #192](https://github.com/zio-wi-pb-mc/pb-science-office/pull/192) ma APPROVE prowadzącego i CI PASS; potrzebuje peer review i sprawdzenia drobnej uwagi dotyczącej pustej listy.
5. **Dostęp do projektów: [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174)** — nadal Draft; wymaga uzgodnienia i integracji z F2/F3.
6. **[Release PR #90](https://github.com/zio-wi-pb-mc/pb-science-office/pull/90) (`dev → main`)** — pozostaje otwarty; przed wydaniem prowadzący weryfikuje aktualny zakres, CI i clean clone. Nie traktuj `main` jako kopii najnowszego `dev`.

!!! warning "Ważny blocker demonstracji"
    Obecna lista i szczegóły projektów F3 są w kodzie `dev` odcinane przy `DEBUG=False`. Tymczasem nowy obraz Demo #193 używa `DEBUG=False`. **Sukces smoke testów obrazu nie oznacza jeszcze, że pełny przepływ MVP działa w tym trybie.** Należy rozwiązać to w F/E/C przez poprawny dostęp i integrację, bez wymuszania `DEBUG=True` w środowisku release-like.

## Co już istnieje

- na `dev` są aplikacja Django, Docker/PostgreSQL, bazowe widoki syntetycznych projektów F3 i podsumowanie budżetu F4;
- #157 (integracja szkieletu) jest zakończone, a mechanizm `/version/` jest już dostępny;
- PR #180 (testowe logowanie) i PR #193 (obraz Demo) są zatwierdzone przez prowadzącego, ale nadal otwarte; oba mają pozytywne CI;
- PR #192 dostarcza testy przypadków brzegowych F3–F4; otrzymał APPROVE prowadzącego i ma pozytywne CI, ale nie jest scalony;
- PR #174 (uprawnienia obiektowe) pozostaje Draft;
- PR #188 (procedura Shared Staging) ma pozytywne CI i jest technicznie mergeable; opis procedury trzeba uzgodnić z obrazem z PR #193 przed scaleniem;
- nie ma jeszcze potwierdzenia, że cały przepływ `login → lista → szczegóły → budżet` działa razem w trybie `DEBUG=False`.

## Aktualne role zespołów

| Zespół | Główna odpowiedzialność teraz |
|---|---|
| **A** | reguły legacy → fixtures, przypadki referencyjne i testy |
| **B** | pierwszy mały formularz (wybór zakresu, Django/UI, walidacja, testy), praktyczny UX i E2E po integracji F2 |
| **C** | wspólne środowisko, CI, Docker, release, integracja |
| **D** | dane legacy, importer, migracja i parity tests |
| **E** | role, uprawnienia, dostęp do danych i minimalny workflow |
| **F** | integracja vertical slice i rozwój działającego MVP |

Szczegółowy, względnie stały zakres A–F: [Plan Discovery A–F](12-plan-discovery-a-f.md).

## Gdy kończysz bieżące zadanie

Nie czekaj automatycznie na przydział prowadzącego.

1. sprawdź otwarte Issues i PR,
2. sprawdź [Bank możliwych zadań MVP](17-bank-zadan-mvp.md),
3. wybierz najmniejszy brak, który realnie przesuwa produkt do przodu,
4. sprawdź, czy nikt już tego nie robi,
5. zaproponuj Issue z jednym właścicielem i mierzalnym rezultatem.

Kolejność priorytetów dla wolnych osób:

1. integracja F2/F3/F4,
2. testy automatyczne vertical slice,
3. Docker / CI / release / demo,
4. importer i testy migracji,
5. kontrola dostępu,
6. pierwszy mały formularz/proces.

Nowy dokument Discovery jest niżej na liście, chyba że jego brak konkretnie blokuje kod lub test.

## Środowiska

Docelowy model uruchamiania projektu opisuje osobna strona:

[**Środowiska MVP — Local Dev, Demo i Shared Staging**](18-srodowiska-mvp.md)

Najważniejsza zasada: **każdy student powinien móc uruchomić aktualną aplikację i ją zobaczyć**, a zaakceptowany stan produktu powinien być możliwy do demonstracji w środowisku zbliżonym do wdrożeniowego.

## Aktualny skład aktywnych zespołów

### PS1

**A — obecny system i dane**  
Lead: Daniel Perkowski  
Jakub Mirończuk, Daniel Perkowski, Aleksandra Masiejczyk

**B — procesy, formularze i wymagania**  
Lead: Karina Chilkiewicz  
Patrycja Choćko, Karina Chilkiewicz, Bartłomiej Karanowski, Klaudia Natalia Klim, Gabriel Chomiczewski

**C — Core i środowisko techniczne**  
Lead: Vladislav Matveev  
Mykola Nishchymnyi, Vladislav Matveev, Weronika Sosnowska, Nazar Hrinchenko, Maciej Sawicki

### PS2

**D — legacy, baza i migracja**  
Lead: Tomasz Sidoruk  
Miłosz Dubowski, Tomasz Sidoruk

**E — role, workflow i wymagania użytkowników**  
Lead: Michał Borawski  
Emilia Drewnowska, Cezary Babik, Michał Borawski

**F — pierwszy vertical slice / implementacja**  
Lead: Paweł Kozikowski  
Jakub Pawlak, Patryk Bura, Łukasz Bondar, Paweł Kozikowski

## Wyrównywanie obciążenia

Nie utrzymujemy sztucznie równych silosów.

- Jakub Pawlak po ukończeniu swoich bieżących zadań może wesprzeć D przy importerze/migracji,
- osoby z B po zakończeniu bieżących zadań mogą przechodzić do testów A/F lub implementacji pierwszego formularza,
- osoby z A mogą pisać fixtures i wykonywalne testy finansów używane bezpośrednio przez F4,
- C może i powinno pomagać F w integracji, CI, Dockerze i środowisku demonstracyjnym.

## Kamienie milowe

| Termin | Oczekiwany stan produktu |
|---|---|
| koniec października | #157 domknięte, pierwszy stabilny release, F2/F3/F4 na wspólnej bazie |
| połowa listopada | działa `logowanie → lista → szczegóły → budżet` |
| koniec listopada | podstawowe uprawnienia + pierwszy mały formularz/proces + testy |
| początek grudnia | feature freeze MVP; dalej stabilizacja, UX, testy i dokumentacja |

## Czego teraz nie robić

- nie tworzyć drugiego skeletonu,
- nie powtarzać szerokiej analizy legacy bez konkretnego odbiorcy,
- nie tworzyć drugiego modelu projektu, auth, finansów ani Dockera,
- nie czekać z implementacją na zakończenie wszystkich dokumentów,
- nie rozpoczynać zwykłej pracy od `main`,
- nie tworzyć Issue tylko dlatego, że temat widnieje w dawnym planie zajęć.

## Historia aktualizacji

- **03.11.2026 (aktualizacja po review)** — potwierdzono APPROVE prowadzącego dla #180/#192/#193, bez merge; określono brakujące kroki integracyjne i kierunek dla zespołu B.
- **03.11.2026** — zaktualizowano checkpoint po merge #157; wskazano otwarte PR #180/#193/#192/#174, ryzyko `DEBUG=False` w Demo oraz kolejność integracji MVP.
- **28.10.2026** — strona została skrócona do bieżącego stanu i priorytetów; szczegółowy bank pracy i środowiska wydzielono na osobne strony.
- **22.10.2026** — przesunięto nacisk z Discovery na implementację, testy i integrację.
- **14–15.10.2026** — utworzono i doprecyzowano pierwszy przekrojowy obraz A–F.
