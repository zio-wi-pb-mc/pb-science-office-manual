# Stan projektu i priorytety

**Stan na: 28.10.2026**  
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

## Najbliższy checkpoint techniczny

1. domknąć **#157 — stabilne środowisko / clean clone**,
2. scalić #157 do `dev`,
3. powtórzyć CI i clean-clone na aktualnym `dev`,
4. finalnie zweryfikować **#90 — release `dev → main`**,
5. wydać pierwszy stabilny checkpoint do `main`.

Równolegle rozwijamy F2/F3/F4 — nie czekamy z produktem na release.

## Co już istnieje

W ostatnim etapie projekt przesunął się wyraźnie w stronę implementacji:

- F4 / budżet (#93) jest scalony do `dev`,
- statusy i przejścia (#117) są scalone,
- role i uprawnienia (#123) są scalone,
- schemat legacy w PostgreSQL (#164) jest scalony,
- walidacja `.env` (#176) i readiness PostgreSQL (#178) są scalone,
- F2 (#180) zawiera implementację logowania testowego i ról,
- dostęp do projektów (#174) jest rozwijany,
- #157 zawiera rozbudowaną weryfikację Docker/clean-clone,
- #90 pozostaje kandydatem na pierwszy stabilny release.

## Aktualne role zespołów

| Zespół | Główna odpowiedzialność teraz |
|---|---|
| **A** | reguły legacy → fixtures, przypadki referencyjne i testy |
| **B** | wymagania → testy akceptacyjne, E2E, review działającego produktu |
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

- po domknięciu #157/#90 Jakub Pawlak może wesprzeć D przy importerze/migracji,
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

- **28.10.2026** — strona została skrócona do bieżącego stanu i priorytetów; szczegółowy bank pracy i środowiska wydzielono na osobne strony.
- **22.10.2026** — przesunięto nacisk z Discovery na implementację, testy i integrację.
- **14–15.10.2026** — utworzono i doprecyzowano pierwszy przekrojowy obraz A–F.
