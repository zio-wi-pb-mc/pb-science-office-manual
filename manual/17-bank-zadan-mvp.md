# Bank możliwych zadań MVP

Ta strona jest **bankiem sensownych kierunków pracy**, a nie automatycznym przydziałem.

**Najpierw sprawdź [Roadmap 3 tygodnie](21-roadmap-3-tygodnie.md)** — zawiera priorytety na 4–20 listopada, osobno dla A–F, oraz status prac już będących w PR. Ten bank jest listą możliwości, nie listą wolnych przydziałów.

Przed utworzeniem Issue:

1. sprawdź aktualne Issues i PR,
2. sprawdź, czy podobna praca nie jest już wykonywana,
3. określ odbiorcę wyniku,
4. wybierz możliwie mały zakres,
5. zapisz mierzalne kryteria akceptacji.

!!! warning "Nie duplikuj pracy"
    Jeżeli istnieje aktywne Issue/PR o tym samym zakresie, **nie twórz drugiego**. Dołącz do istniejącej pracy, zaproponuj podzadanie albo wybierz inną lukę.

# Priorytet 0 — wspólny vertical slice

Najważniejszy rezultat całego projektu:

`logowanie → lista projektów → szczegóły projektu → budżet`

Przykładowe zadania przekrojowe:

- integracja F2 z F3,
- integracja F3 z F4,
- wspólna nawigacja i dashboard,
- jeden model/identyfikator projektu,
- testy dostępu do własnego i cudzego projektu,
- E2E całego przepływu,
- obsługa 404 i braku danych,
- syntetyczny dataset używany przez wszystkie elementy demonstratora.

# A — finanse i funkcje działającego MVP

**Od 04.11:** grupa A nie powinna kontynuować dokumentacji dla samej dokumentacji. [Plan prac A na 2–3 tygodnie](21-roadmap-3-tygodnie.md#zespol-a-zadania-nastawione-na-produkt-aktualizacja-0411): ulepszenie ekranu budżetu F4, uzupełnienie wyłącznie brakujących testów biznesowych, potem walidacja pierwszego formularza B/F. #163, #192 i #136 są już scalone; nie powielać.

Dalsze pozycje są **rezerwowym bankiem propozycji**, a nie listą zadań wymagających ponownego wykonania.

Możliwe Issues:

### A-TEST-01 — fixtures finansowe

Przygotować wspólny zestaw syntetycznych danych obejmujący m.in.:

- zwykły projekt,
- wartości zerowe,
- rezerwację,
- częściowe rozliczenie,
- wydatek,
- przypadek z narzutem,
- przypadek brzegowy zaokrąglenia.

**Rezultat:** fixtures używane przez testy F4.

### A-TEST-02 — wykonywalne testy salda

Przenieść potwierdzone przypadki `wejście → oczekiwany wynik` do testów automatycznych.

**Rezultat:** testy działające w CI.

### A-TEST-03 — rezerwacja vs wydatek

Zamienić potwierdzone reguły cyklu rezerwacji na przypadki testowe nowej aplikacji.

### A-PARITY-01 — oracle legacy

Dla małego zestawu danych przygotować oczekiwane wyniki wyprowadzone z legacy i porównywać je z nową logiką.

### A-DATA-01 — wspólny dataset F3/F4

Przygotować dane dwóch lub większej liczby projektów tak, aby F3 i F4 korzystały z tego samego zestawu i nie mieszały projektów/lat.

### A-F4-01 — wsparcie warstwy domenowej finansów

Pomóc F przenieść potwierdzone reguły z dokumentacji do testowalnego kodu domenowego, bez kopiowania logiki do widoków.

# B — pierwszy formularz, testy akceptacyjne i UX

**Ważne — aktualizacja 03.11.2026:** po zgłoszeniu duplikowania pracy przez zespoły B/F, pozycje B-TEST-01–04 są **pomysłami referencyjnymi, a nie wolnymi zadaniami**. Część odpowiadających im testów już istnieje na `dev` lub w otwartych PR. Nie implementuj ich drugi raz. Najpierw porównaj konkretny brak z istniejącymi testami i uzgodnij ewentualne uzupełnienie z właścicielem F.

**Główny nowy kierunek B:** jeden mały formularz/proces w istniejącej aplikacji Django, od minimalnych wymagań przez widok i walidację aż po wykonywalne testy. W pięcioosobowym zespole przydziel konkretne, niepowielające się podzadania z jednym assignee, zamiast mechanicznie dzielić trzy ogólne hasła.

Logowanie [PR #180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180) jest już scalone do `dev`. Pełne E2E wymaga jeszcze integracji F/#194 i E/#173; B może już przygotować scenariusz, a UX testować na istniejących widokach.

Poniższe pozycje opisują potencjalne zakresy — przed rozpoczęciem sprawdź Project, Issues i PR.

Możliwe Issues:

### B-TEST-01 — logowanie F2

Automatyczne scenariusze:

- poprawne logowanie,
- błędne hasło,
- wylogowanie,
- dostęp anonimowy,
- zachowanie roli użytkownika.

### B-TEST-02 — lista projektów F3

Testy listy, pustej listy, kilku projektów i podstawowych filtrów, jeżeli są już w zakresie.

### B-TEST-03 — szczegóły projektu

Test poprawnego projektu, nieistniejącego projektu, brakujących danych i zgodności pól z ustalonym minimum.

### B-TEST-04 — budżet F4

Testy scenariuszy finansowych dostarczonych przez A.

### B-E2E-01 — pierwszy E2E

Scenariusz:

`login → lista → szczegóły → budżet`

Powinien być wykonywalny automatycznie lub przynajmniej mieć jednoznaczną procedurę uruchomienia.

### B-UX-01 — review działającej aplikacji

Przejść aktualny vertical slice jak użytkownik, zgłosić konkretne bugi/UX Issues i do każdego dołączyć kroki reprodukcji.

### B-FORM-01 — pierwszy mały formularz

Na podstawie potwierdzonych wymagań wybrać **jeden mały formularz**, ograniczyć go do MVP i przygotować pola, walidacje i kryteria akceptacji.

### B-FORM-02 — implementacja UI formularza

Osoba z B może bezpośrednio pomóc F zaimplementować uzgodniony formularz. Przynależność do B nie zabrania pisania kodu produktu.

# C — Platform & Integration Engineering

**Od 04.11:** Docker Demo [#193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193) jest już scalony. C nie czeka na D/E/F: **[pełna lista niezależnych zadań na 2–3 tygodnie](21-roadmap-3-tygodnie.md#zespol-c-zadania-niezalezne-od-innych-grup-aktualizacja-0411)** — developer doctor, check migracji w CI, seed syntetycznych kont, runner HTTP, security, staging.

Możliwe Issues:

### C-ENV-01 — clean-clone (zrealizowany w #157)

#157 jest zamknięte i scalone. Nie otwieraj kolejnego zadania o tym samym zakresie; przy następnych zmianach sprawdzaj regresje środowiska na drugim komputerze:

`clone → .env → docker compose up --build → działająca aplikacja`.

### C-REL-01 — pierwszy stabilny release

Doprowadzić #90 do zweryfikowanego `dev → main`.

### C-DEMO-01 — środowisko Demo / Release-like (PR #193 SCALONY)

Nie implementuj tego ponownie; zamiast tego weryfikuj funkcjonalne odbiory Demo. Zakres obejmuje: `compose.demo.yaml` lub równoważną konfigurację:

- bez bind mount kodu,
- `DEBUG=False`,
- PostgreSQL,
- automatyczne migracje,
- health/readiness,
- syntetyczne dane,
- uruchamianie serwerem odpowiednim do środowiska demonstracyjnego zamiast Django `runserver`.

Szczegóły: [Środowiska MVP](18-srodowiska-mvp.md).

### C-DEMO-02 — seed kont demonstracyjnych

Idempotentna i bezpieczna komenda tworząca **syntetyczne konta testowe i role** Django. Projekty F3 są obecnie statycznymi rekordami w `src/projects/data.py`; bez samowolnego projektowania tabel lub importera danych zespołu D. Po powstaniu kanonicznego modelu można rozszerzyć seed w osobnym Issue.

### C-CI-01 — test obrazu Docker

CI ma budować właściwy obraz aplikacji, uruchamiać go z PostgreSQL i wykonać smoke test HTTP.

### C-CI-02 — E2E w Dockerze

Uruchomić test `login → project → budget` w środowisku kontenerowym.

### C-REL-02 — wersja aplikacji (endpoint już na `dev`; follow-up w #193)

W aplikacji i/lub endpointzie diagnostycznym pokazać commit SHA / numer release, aby było wiadomo, co jest testowane.

### C-DX-01 — developer experience

Jedna krótka, sprawdzona instrukcja uruchomienia dla nowej osoby.

### C-INT-01 — review integracyjne F2/F3/F4

Sprawdzić, czy moduły korzystają ze wspólnych ustawień, modeli i mechanizmów zamiast tworzyć równoległe rozwiązania.

### C-STAGE-01 — procedura Shared Staging

Przygotować skrypt/procedurę wdrożenia zaakceptowanego obrazu na wspólną maszynę. Sam serwer nie musi jeszcze istnieć.

# D — dane legacy, importer i migracja

Możliwe Issues:

### D-IMP-01 — minimalny importer

Importer małego zestawu syntetycznych rekordów legacy do nowego modelu.

### D-IMP-02 — walidacja importu

Po imporcie sprawdzić liczbę rekordów, identyfikatory, relacje i pola krytyczne.

### D-DQ-01 — przypadki niespójnych danych

Testy dla osieroconych relacji, braków i niejednoznacznych identyfikatorów ujawnionych przez analizę legacy.

### D-PARITY-01 — wykonywalne parity tests

Wybrane scenariusze z planu zgodności zamienić w automatyczne testy.

### D-MAP-01 — projekt/rok/id

Doprecyzować tylko te zasady identyfikacji, które są potrzebne F3/F4 lub importerowi.

### D-MIG-01 — migracja przykładowych projektów

Po ustabilizowaniu nowego modelu przenieść niewielki, syntetyczny zestaw projektów i zweryfikować rezultat.

# E — role, dostęp i workflow

Możliwe Issues:

### E-AUTH-01 — dostęp do własnego projektu

Doprowadzić #173/#174 do działających testów i integracji z F2/F3.

### E-AUTH-02 — odmowa dostępu

Testy, że użytkownik nie może otworzyć projektu spoza swojego zakresu.

### E-AUTH-03 — role kierownicze

Minimalny, uzgodniony zakres widoczności dziekana/rektora/Działu Nauki potrzebny aktualnemu MVP.

### E-WF-01 — pierwszy minimalny workflow

Wybrać jeden proces i zaimplementować tylko niezbędne przejścia, np.:

`draft → submitted → returned → submitted → approved`.

### E-AUDIT-01 — historia zmiany statusu

Zapisywać kto, kiedy i z jakiego stanu na jaki przeszedł.

### E-INT-01 — integracja F2 z kontrolą dostępu

Nie tworzyć drugiego auth. Wykorzystać użytkownika/role z F2.

# F — vertical slice i kolejne funkcje MVP

Możliwe Issues:

### F-INT-01 — F3 + F4

Domknąć #155: szczegóły projektu i budżet mają dotyczyć tego samego projektu/roku.

### F-INT-02 — F2 + F3 + F4

Po logowaniu użytkownik przechodzi do listy swoich projektów, szczegółów i budżetu.

### F-NAV-01 — wspólna nawigacja

Minimalna nawigacja aplikacji, bez budowania osobnego design systemu.

### F-ERR-01 — stany błędów i braku danych

Spójne 403/404/empty state dla vertical slice.

### F-FORM-01 — pierwszy formularz MVP

Zaimportować wymagania z B i zbudować pierwszy mały formularz jako kolejny krok po vertical slice.

### F-WF-01 — podłączenie pierwszego workflow

Po ustaleniu minimum przez E dodać pierwszy krok statusowy do działającego formularza.

# Zadania przekrojowe dla wolnych osób

Jeżeli Twój zespół chwilowo nie ma pracy blokującej MVP, możesz wziąć zadanie przekrojowe:

- testy E2E,
- testy regresji,
- poprawki UX wynikające z realnego użycia,
- Docker/CI,
- seed danych,
- integrację istniejących modułów,
- bugi wykryte w aktualnym `dev`,
- review/test PR innego zespołu,
- małe poprawki dokumentacji uruchomieniowej wynikające z realnego testu.

# Minimalny format nowego Issue

```text
Cel:
Odbiorca / zależność:
Co konkretnie powstanie:
Jak to sprawdzimy:
Źródło / podstawa:
Poza zakresem:
```

Jeżeli rezultatem ma być dokument, trzeba dodatkowo wskazać **jaki kod, test albo decyzja implementacyjna są przez jego brak zablokowane**.
