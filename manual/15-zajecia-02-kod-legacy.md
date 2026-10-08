# Zajęcia 2 — otrzymanie kodu legacy i Discovery 2.0 (PS1 i PS2)

**Na tych zajęciach po raz pierwszy otrzymujecie kod starego systemu oraz przygotowane materiały dotyczące bazy danych.** Wcześniejsze analizy opierały się na ograniczonych informacjach — teraz możemy sprawdzić, co faktycznie zostało zaimplementowane.

**Status:** instrukcja dla bieżących zajęć. [Propozycje zadań](16-propozycje-zadan-po-audycie.md) **nie są przydziałem** ani zatwierdzonym backlogiem. Obowiązują przydzielone Issues w GitHub Project.

## Cele zajęć 2

1. Uzyskać od prowadzącego dostęp do materiałów legacy przeznaczonych do pracy dydaktycznej.
2. Zapoznać się ze strukturą kodu PHP i bazy SQL oraz zasadami bezpiecznej pracy.
3. Zestawić przynajmniej kilka wcześniejszych hipotez z konkretnymi fragmentami kodu/schematu.
4. Wybrać z leadem sensowny kierunek kontynuacji; nie rozpoczynać jeszcze bez uzgodnienia dużej implementacji nowego systemu.

## 1. Otrzymanie i przygotowanie materiałów

- Prowadzący udostępnia **zatwierdzoną kopię dydaktyczną**, oddzielnym kanałem i wyłącznie uprawnionym uczestnikom.
- Rozpakuj ją **poza katalogiem lokalnego klona repozytorium Git**. Nie wysyłaj całego systemu ani SQL na GitHub (także do Issues, komentarzy i PR).
- Przeczytaj instrukcję dołączoną do paczki. Jeżeli wersja środowiska lub konfiguracja jest niejasna, zgłoś blocker; nie wpisuj rzeczywistych haseł uczelnianych.
- Jeśli środowisko jest przygotowane i dopuszczone, uruchom aplikację **lokalnie lub na serwerze testowym odizolowanym od internetu**. Samo uruchomienie nie jest warunkiem wykonania całej analizy podczas tych zajęć.
- Nie modyfikuj dostarczonego zrzutu źródłowego. Eksperymentuj wyłącznie na własnej kopii oraz zatwierdzonych danych dydaktycznych.

## 2. Pierwsza analiza — co sprawdzić na zajęciach?

Otwórz wcześniejszy dokument Discovery swojego zespołu i wskaż **co najmniej trzy** punkty do weryfikacji. Przy każdym zapisz:

| Twierdzenie z Discovery | Dowód z legacy (plik/funkcja/tabela) | Ocena | Pytanie/konsekwencja |
|---|---|---|---|
| ... | ... | Potwierdzone / częściowo / niezgodne / nieustalone | ... |

Dowód ma być możliwy do odtworzenia, np. nazwa funkcji i pliku albo definicja tabeli — **bez kopiowania danych osób, haseł, danych finansowych z rekordów czy wrażliwego kodu konfiguracyjnego**.

Ważne ustalenia z wstępnego statycznego audytu są opisane w prywatnym repozytorium aplikacji w `docs/legacy/discovery-2-findings.md`. Stanowią punkt wyjścia, nie ostateczną specyfikację.

## 3. Nad czym pracują zespoły?

| Zespół | Co należy zweryfikować jako pierwsze |
|---|---|
| **A — obecny system i finanse (PS1)** | Rodzaje prac, rezerwacje vs. wydatki, definicje dostępnego salda |
| **B — procesy i formularze (PS1)** | Faktycznie istniejące formularze/operacje, ich pola, walidacje, dokumenty i proces pracy własnej |
| **C — Core (PS1)** | Konsekwencje wymagań legacy dla architektury, testów i generowania dokumentów |
| **D — baza i migracja (PS2)** | Tabele, klucze logiczne, identyfikatory, kontynuacje prac między latami |
| **E — role i workflow (PS2)** | Role i ograniczenia operacji; oddzielenie tego, co potwierdza kod, od postulowanego workflow |
| **F — vertical slice (PS2)** | Kontynuacja własnych otwartych Issues F1–F4, z uwzględnieniem zweryfikowanych danych A–E |

Nie kopiujemy organizacji tabel i kodu legacy 1:1 do projektu Django/PostgreSQL.

### Nowa osoba w zespole B

Nowy student: (1) uzyskuje dostęp do organizacji, zakłada Issue profilu, (2) czyta handoff i dotychczasowe dokumenty B, (3) wspólnie z leadem sprawdza, co nie jest jeszcze zrobione, (4) uzgadnia **własne** Issue. Jako propozycję można rozważyć **B-LEG-04** (mapa pól i walidacji) lub **B-LEG-05** (scenariusze akceptacyjne). To nie jest automatyczny przydział; nie odbieramy zadań wcześniejszym członkom grupy.

## 4. Propozycje kolejnych prac

Zobacz [propozycje zadań po audycie legacy](16-propozycje-zadan-po-audycie.md).

To **lista możliwości**, a nie nowy obowiązkowy backlog. Z leadem i prowadzącym należy sprawdzić bieżące Issue/PR, ustalić mały zakres, właściciela, rezultat i mierzalne kryteria akceptacji. Dopiero wtedy tworzymy lub aktualizujemy Issue. Normalny przebieg pracy: `Issue → branch od dev → PR do dev → CI → peer review → squash merge`.

## 5. Co ma zostać po zajęciach 2?

- Każdy wie, gdzie ma **dostęp do zatwierdzonych materiałów**, i zna reguły ich wykorzystania.
- Każdy zna swoje istniejące Issue i wie, czy wymaga ono aktualizacji po otrzymaniu kodu.
- Każdy zespół ma krótkie pierwsze ustalenia (fakty/hipotezy/blockery) i plan kontynuacji.
- Nowy student B ma profil i uzgodniony sposób włączenia do pracy; konkretne nowe Issue można doprecyzować z leadem.
- Lead publikuje krótki handoff dla drugiej grupy: co sprawdzono, czego nie udało się ustalić i kto nad czym pracuje.

**Nie wymagamy na koniec tych zajęć:** uruchomionego u wszystkich serwera, kompletnego reverse engineeringu, zamknięcia wszystkich nowych zadań ani jednoczesnej implementacji całego systemu.

## Poufność

Materiały przekazane na potrzeby zajęć nie stają się automatycznie publiczne. W Issues, PR i dokumentacji używaj syntetycznych przykładów i zwięzłych odwołań do plików/funkcji. Nie publikuj dumpu bazy, sekretów, kopii serwerowych, danych osobowych ani nieautoryzowanych fragmentów kodu. Zewnętrzne narzędzia AI i serwery nie są automatycznie zatwierdzonym miejscem przetwarzania zawartości paczki.
