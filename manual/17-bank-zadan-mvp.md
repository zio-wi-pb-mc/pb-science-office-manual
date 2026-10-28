# Bank możliwych zadań MVP

Ta strona jest **bankiem sensownych kierunków pracy**, a nie automatycznym przydziałem.

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

# A — legacy, finanse i dane referencyjne

A nie powinno otwierać kolejnych szerokich audytów. Wiedza z legacy ma teraz trafiać do **kodu, fixtures i testów**.

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

# B — wymagania, testy akceptacyjne i UX

B powinno coraz mniej produkować sam Markdown, a coraz częściej **testować i poprawiać działający produkt**.

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

# C — platforma, Docker, CI i integracja

C jest obecnie **Platform / Integration Owner**. To jest duży obszar pracy implementacyjnej.

Możliwe Issues:

### C-ENV-01 — finalizacja clean-clone

Domknąć #157 i potwierdzić na drugim komputerze:

`clone → .env → docker compose up --build → działająca aplikacja`.

### C-REL-01 — pierwszy stabilny release

Doprowadzić #90 do zweryfikowanego `dev → main`.

### C-DEMO-01 — środowisko Demo / Release-like

Przygotować `compose.demo.yaml` lub równoważną konfigurację:

- bez bind mount kodu,
- `DEBUG=False`,
- PostgreSQL,
- automatyczne migracje,
- health/readiness,
- syntetyczne dane,
- uruchamianie serwerem odpowiednim do środowiska demonstracyjnego zamiast Django `runserver`.

Szczegóły: [Środowiska MVP](18-srodowiska-mvp.md).

### C-DEMO-02 — seed danych demonstracyjnych

Jedna deterministyczna komenda tworząca:

- testowych użytkowników,
- kilka projektów,
- dane budżetowe,
- role potrzebne vertical slice.

### C-CI-01 — test obrazu Docker

CI ma budować właściwy obraz aplikacji, uruchamiać go z PostgreSQL i wykonać smoke test HTTP.

### C-CI-02 — E2E w Dockerze

Uruchomić test `login → project → budget` w środowisku kontenerowym.

### C-REL-02 — wersja aplikacji

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
