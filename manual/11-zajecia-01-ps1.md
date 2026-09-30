# Zajęcia 1 — PS1

## Cel zajęć

Na pierwszych zajęciach **nie próbujemy jeszcze zbudować całego systemu**.

Rezultatem zajęć mają być:

1. profil każdego studenta,
2. trzy zespoły projektowe: **A, B, C**,
3. tymczasowy lead każdego zespołu,
4. jedno konkretne Issue przypisane do każdego studenta,
5. review jednego Issue kolegi,
6. rozpoczęcie rzeczywistej pracy Discovery,
7. lista pytań, ryzyk i blockerów.

Zespoły A/B/C są na razie zespołami Discovery. Ich zakres może później ulec zmianie.

---

# 1. Profil studenta

Każdy student:

1. wchodzi do repozytorium `pb-science-office`,
2. wybiera **Issues → New issue → Student profile**,
3. wpisuje tytuł:

`[PROFILE] Imię Nazwisko`

4. uzupełnia cały formularz,
5. zapisuje Issue.

Profil nie trafia do backlogu projektu.

---

# 2. Podział na zespoły

Prowadzący tworzy trzy zespoły po około 4 osoby:

- **Zespół A — obecny system i dane**
- **Zespół B — procesy i formularze**
- **Zespół C — Core i środowisko techniczne**

Każdy zespół otrzymuje **tymczasowego leada**.

Lead nie jest przełożonym pozostałych osób. Odpowiada za organizację pracy zespołu i kontakt z prowadzącym.

---

# 3. Zespół A — obecny system i dane

Celem zespołu jest ustalenie, **co obecny system faktycznie robi**, jakie dane reprezentuje i czego jeszcze o nim nie wiemy.

Na pierwszych zajęciach dysponujemy przede wszystkim widokiem realizatora projektu, screenami oraz informacjami od prowadzącego. Brak pełnego dostępu do systemu nie jest błędem — jednym z rezultatów Discovery ma być lista rzeczy wymagających sprawdzenia po otrzymaniu kodu PHP i anonimowej bazy.

## A1 — Inwentaryzacja funkcji widoku realizatora

**Proponowany tytuł Issue:**

`[DISCOVERY-A1] Inwentaryzacja funkcji widoku realizatora projektu`

**Rezultat:**

`docs/legacy/current-user-view.md`

Dokument powinien zawierać tabelę:

| Ekran / funkcja | Co użytkownik widzi | Co może wykonać | Dane wejściowe | Wynik | Otwarte pytania |
|---|---|---|---|---|---|

**Kryteria akceptacji:**

- opisane są wszystkie pokazane podczas zajęć ekrany i funkcje,
- rozróżniono dane tylko wyświetlane i modyfikowalne,
- wskazano elementy niezrozumiałe lub wymagające potwierdzenia,
- nie zakładamy funkcji, których nie widzieliśmy lub których nie potwierdzono.

**Typ pracy:** Analysis  
**Rozmiar:** M

---

## A2 — Model pojęciowy wynikający z obecnego UI

**Tytuł:**

`[DISCOVERY-A2] Model danych widoczny z perspektywy realizatora`

**Rezultat:**

`docs/legacy/domain-from-ui.md`

Należy wskazać rozpoznane obiekty, np.:

- użytkownik,
- projekt / praca,
- rok,
- budżet,
- kategoria kosztów,
- wydatek,
- rezerwacja.

Dla każdego obiektu należy podać najważniejsze informacje oraz relacje z innymi obiektami.

**Kryteria akceptacji:**

- istnieje lista podstawowych obiektów,
- opisane są relacje pomiędzy nimi,
- rozróżniono elementy pewne i jedynie przypuszczalne,
- istnieje lista pytań do weryfikacji po otrzymaniu bazy.

**Typ:** Analysis  
**Rozmiar:** M

---

## A3 — Reguły finansowe obecnego systemu

**Tytuł:**

`[DISCOVERY-A3] Analiza reguł finansowych obecnego systemu`

**Rezultat:**

`docs/legacy/finance-rules.md`

Należy ustalić znaczenie m.in.:

- przyznanych środków,
- planu kosztów,
- wydatków,
- rezerwacji,
- środków dostępnych,
- rozliczenia według lat i kategorii.

**Kryteria akceptacji:**

- zapisano znane wzory lub zależności,
- wskazano co najmniej 3 przykładowe przypadki obliczeniowe,
- zaznaczono reguły niepewne,
- przygotowano pytania wymagające odpowiedzi administratora lub Działu Nauki.

**Typ:** Analysis  
**Rozmiar:** M

---

## A4 — Lista niewiadomych i pytań do administratora

**Tytuł:**

`[DISCOVERY-A4] Pytania do administratora i zakres reverse engineeringu`

**Rezultat:**

`docs/legacy/questions-for-admin.md`

**Kryteria akceptacji:**

Lista obejmuje co najmniej:

- funkcje niewidoczne z konta realizatora,
- role i uprawnienia,
- informacje potrzebne ze starej bazy,
- informacje potrzebne z kodu PHP,
- sposób obecnego logowania,
- integracje z innymi systemami,
- dane wymagające migracji.

Pytania powinny być oznaczone jako:

- MUST — konieczne do MVP,
- SHOULD — ważne, ale nie blokujące,
- LATER — można wyjaśnić później.

**Typ:** Analysis  
**Rozmiar:** S/M

---

# 4. Zespół B — procesy i formularze

Celem zespołu jest ustalenie, **jakie sprawy Dział Nauki obsługuje obecnie przez formularze, dokumenty i działania poza istniejącym systemem**.

## B1 — Katalog formularzy i procesów

**Tytuł:**

`[DISCOVERY-B1] Katalog formularzy i procesów Działu Nauki`

**Rezultat:**

`docs/requirements/forms-catalog.md`

Dla każdego formularza/procesu:

| Nazwa | Kto rozpoczyna | Cel | Dane | Załączniki | Akceptacja/podpis | Dokument końcowy | Pytania |
|---|---|---|---|---|---|---|---|

**Kryteria akceptacji:**

- zinwentaryzowano dostępne materiały,
- podobne formularze zostały pogrupowane,
- wskazano potencjalnych kandydatów do MVP,
- nie zakładamy przebiegu procesu bez potwierdzenia.

**Typ:** Analysis  
**Rozmiar:** M

---

## B2 — Proces pracy własnej / wniosku i kosztorysu

**Tytuł:**

`[DISCOVERY-B2] Analiza procesu pracy własnej i kosztorysu`

**Rezultat:**

`docs/requirements/process-research-work.md`

Należy opisać:

- aktorów,
- moment rozpoczęcia,
- wymagane dane,
- kolejne stany,
- możliwe decyzje,
- zwrot do poprawy,
- załączniki,
- dokument końcowy,
- otwarte pytania.

**Kryteria akceptacji:**

- proces posiada początek i koniec,
- wskazane są role,
- opisane są możliwe stany,
- wskazane są informacje wymagające potwierdzenia przez Dział Nauki.

**Typ:** Analysis  
**Rozmiar:** M

---

## B3 — Delegacje i konferencje

**Tytuł:**

`[DISCOVERY-B3] Analiza delegacji i udziału w konferencjach`

**Rezultat:**

`docs/requirements/process-travel-conference.md`

Należy ustalić podobieństwa i różnice pomiędzy:

- wyjazdem krajowym,
- wyjazdem zagranicznym,
- konferencją,
- kosztami podróży,
- finansowaniem z projektu/pracy.

**Kryteria akceptacji:**

- zidentyfikowano wspólne dane,
- wskazano różnice pomiędzy wariantami,
- opisano wymagane zgody i dokumenty, o ile wynikają ze źródeł,
- istnieje lista pytań otwartych.

**Typ:** Analysis  
**Rozmiar:** M

---

## B4 — Wspólne elementy formularzy i dokumentów

**Tytuł:**

`[DISCOVERY-B4] Wspólne elementy formularzy i dokumentów`

**Rezultat:**

`docs/requirements/common-form-elements.md`

Należy wyszukać elementy powtarzalne, np.:

- pracownik,
- jednostka,
- projekt/praca,
- źródło finansowania,
- kwoty,
- daty,
- załączniki,
- osoby akceptujące,
- komentarze,
- status,
- PDF/DOCX,
- historia zmian.

**Kryteria akceptacji:**

- istnieje lista powtarzalnych elementów,
- wskazano kandydatów na wspólne komponenty systemu,
- wskazano elementy specyficzne dla pojedynczych formularzy.

**Typ:** Analysis  
**Rozmiar:** M

---

# 5. Zespół C — Core i środowisko techniczne

Celem zespołu jest przygotowanie fundamentu, aby projekt nie czekał tydzień na rozpoczęcie prac technicznych.

Planowany stos:

- Python / Django,
- PostgreSQL,
- HTML / Bootstrap,
- niewielka ilość JavaScript / HTMX,
- Docker / Docker Compose,
- GitHub Actions.

## C1 — Minimalne środowisko Django + PostgreSQL

**Tytuł:**

`[DISCOVERY-C1] Bootstrap środowiska Django/PostgreSQL/Docker`

**Rezultat:**

pierwszy działający Pull Request ze szkieletem aplikacji.

**Kryteria akceptacji:**

- projekt Django uruchamia się lokalnie,
- konfiguracja nie zawiera sekretów w repo,
- PostgreSQL jest przewidziany jako docelowa baza,
- istnieje krótka instrukcja uruchomienia,
- istnieje prosty endpoint / ekran potwierdzający działanie aplikacji,
- CI nadal przechodzi.

Nie należy jeszcze implementować funkcjonalności biznesowych.

**Typ:** Infrastructure  
**Rozmiar:** L

---

## C2 — Początkowa architektura modularnego monolitu

**Tytuł:**

`[DISCOVERY-C2] Początkowa architektura i podział na moduły`

**Rezultat:**

`docs/adr/ADR-001-initial-architecture.md`

Należy rozważyć co najmniej:

- accounts / users,
- organizations,
- projects / research works,
- budgets,
- workflow,
- documents,
- attachments,
- audit.

**Kryteria akceptacji:**

- określono granice odpowiedzialności modułów,
- nie projektujemy mikrousług,
- wspólne mechanizmy nie są powielane w modułach biznesowych,
- wskazano najważniejsze zależności.

**Typ:** Analysis  
**Rozmiar:** M

---

## C3 — Wspólny mechanizm dokumentów PDF/DOCX

**Tytuł:**

`[DISCOVERY-C3] Spike techniczny generowania PDF i DOCX`

**Rezultat:**

`docs/adr/ADR-002-document-generation.md`

Należy porównać sensowne rozwiązania dla Django i zaproponować wspólny kontrakt usługi dokumentowej.

Przykładowa idea:

`DocumentService.generate(template, data, format)`

**Kryteria akceptacji:**

- porównano co najmniej 2 rozsądne rozwiązania,
- uwzględniono PDF i DOCX,
- opisano wersjonowanie szablonów,
- opisano przechowywanie wygenerowanych dokumentów,
- rozwiązanie nie wymaga osobnego generatora w każdym module.

**Typ:** Analysis  
**Rozmiar:** M

---

## C4 — Testy, CI i środowisko testowe

**Tytuł:**

`[DISCOVERY-C4] Strategia testów, CI i środowiska testowego`

**Rezultat:**

`docs/testing/strategy.md`

**Kryteria akceptacji:**

Dokument określa:

- testy jednostkowe,
- testy integracyjne,
- testy krytycznych procesów end-to-end,
- co powinno blokować merge,
- sposób korzystania ze środowiska testowego,
- czego potrzebujemy od administratora PB,
- sposób pracy z anonimową bazą.

**Typ:** Test / Infrastructure  
**Rozmiar:** M

---

# 6. Jak utworzyć swoje Issue

Każdy student tworzy **jedno Issue przypisane wyłącznie do siebie**.

Wybierz:

**Issues → New issue → Task / Feature**

Nie kopiuj jedynie tytułu. Uzupełnij formularz tak, aby Issue było zrozumiałe bez dodatkowego tłumaczenia.

## Przykład

### Tytuł

`[DISCOVERY-A1] Inwentaryzacja funkcji widoku realizatora projektu`

### Cel

> Zidentyfikować funkcje i dane dostępne w obecnym systemie z perspektywy osoby realizującej projekt, aby ustalić minimalny zakres zgodności nowego systemu.

### Zakres

> Analizuję wyłącznie widoki i funkcje pokazane podczas zajęć oraz dostarczone screeny. Nie opisuję funkcji Działu Nauki, których nie widzieliśmy.

### Kryteria akceptacji

- [ ] powstał plik `docs/legacy/current-user-view.md`
- [ ] opisano wszystkie pokazane ekrany
- [ ] rozróżniono odczyt i możliwe operacje
- [ ] zapisano listę niewiadomych
- [ ] rezultat przeszedł review

### Typ pracy

`Analysis`

### Rozmiar

`M`

### Zależności

`brak`

### Uwagi techniczne / źródła

> Demo prowadzącego, screeny obecnego systemu.

---

# 7. Review Issue kolegi

Po utworzeniu Issues każdy student wykonuje **jedno review Issue innej osoby ze swojego zespołu**.

Dla zespołu czteroosobowego:

- osoba 1 reviewuje osobę 2,
- osoba 2 reviewuje osobę 3,
- osoba 3 reviewuje osobę 4,
- osoba 4 reviewuje osobę 1.

Reviewer sprawdza:

1. Czy wiadomo, **co ma powstać**?
2. Czy rezultat jest konkretnym artefaktem?
3. Czy zadanie mieści się mniej więcej w jednym tygodniu?
4. Czy kryteria akceptacji są mierzalne?
5. Czy zakres mówi również, czego zadanie **nie obejmuje**?
6. Czy wskazano niewiadome, zależności lub źródła?

## Format komentarza review

Skopiuj i uzupełnij:

```text
### Review Issue

**Cel jasny:** TAK / NIE
**Rezultat jednoznaczny:** TAK / NIE
**Zakres odpowiedni:** TAK / NIE
**Kryteria akceptacji mierzalne:** TAK / NIE

**Brakuje / wymaga doprecyzowania:**
...

**Proponowana zmiana:**
...

---

## 2. Dodaj stronę pokazującą cały plan A–F

```bash
cat > manual/12-plan-discovery-a-f.md <<'EOF'
# Plan Discovery — zespoły A–F

Podział A–F dotyczy przede wszystkim **pierwszej fazy projektu**. Nie oznacza, że te zespoły będą przez cały semestr realizować wyłącznie jeden moduł.

Po Discovery praca będzie przydzielana dynamicznie ze wspólnego backlogu.

## PS1

### A — obecny system i dane

Zakres:

- widok i funkcje aktualnego systemu,
- model pojęciowy,
- reguły finansowe,
- lista niewiadomych,
- przygotowanie do reverse engineeringu starego PHP i bazy.

### B — procesy i formularze

Zakres:

- katalog spraw i formularzy,
- praca własna / kosztorys / rozliczenie,
- delegacje i konferencje,
- wspólne elementy formularzy,
- dokumenty PDF/DOCX.

### C — Core i środowisko techniczne

Zakres:

- Django/PostgreSQL/Docker,
- modularny monolit,
- wspólne usługi,
- PDF/DOCX,
- CI i testy,
- przygotowanie środowiska do właściwej implementacji.

---

## PS2 — plan wstępny

Dokładny zakres PS2 zostanie potwierdzony po wynikach pracy A–C.

### D — kod legacy, baza i migracja

Planowany zakres:

- analiza kodu PHP,
- analiza schematu anonimowej bazy,
- mapowanie tabel i zależności,
- identyfikacja reguł ukrytych w kodzie,
- plan migracji danych,
- testy zgodności starego i nowego systemu.

### E — role, workflow i wymagania użytkowników

Planowany zakres:

- Dział Nauki,
- realizator projektu,
- kierownictwo,
- administrator,
- macierz uprawnień,
- kolejki spraw,
- akceptacja / odrzucenie / zwrot do poprawy,
- jeden kompletny scenariusz akceptacyjny MVP.

### F — pierwszy pionowy przebieg nowego systemu

Planowany zakres:

- wykorzystanie szkieletu przygotowanego przez C,
- mock logowania,
- użytkownik i role,
- lista projektów/prac,
- szczegóły projektu,
- pierwsze dane budżetowe,
- integracja z CI i testami.

Celem F nie jest zbudowanie całej aplikacji, lecz wykonanie pierwszego kompletnego przebiegu przez architekturę.

---

# Po Discovery

Po zakończeniu A–F:

1. tworzymy właściwy backlog MVP,
2. klasyfikujemy funkcjonalności jako MVP / P1 / P2,
3. szacujemy zadania jako S / M / L,
4. rozdzielamy zadania pomiędzy zespoły zgodnie z obciążeniem i kompetencjami,
5. zespoły nie są na stałe przypisane do pojedynczych modułów.

Priorytetem jest dostarczenie działającego MVP na początku grudnia.
