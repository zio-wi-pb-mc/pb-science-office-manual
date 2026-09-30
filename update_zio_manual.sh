#!/usr/bin/env bash
set -euo pipefail

# Uruchom w repo: pb-science-office-manual
test -f mkdocs.yml || { echo "Uruchom ten skrypt w katalogu pb-science-office-manual"; exit 1; }

cat > manual/index.md <<'EOF'
# ZIO — projekt semestralny

Realizujemy **jeden wspólny projekt**: nowy system wspierający obsługę prac/projektów i wybranych procesów Działu Nauki PB.

**PS1 (czwartek) i PS2 (środa) pracują nad jednym produktem, jednym repozytorium i jednym backlogiem.**

!!! tip "Najbliższe zajęcia"
    Studenci PS1 zaczynają od instrukcji **[Zajęcia 1 — PS1](11-zajecia-01-ps1.md)** i wykonują ją krok po kroku.

## Stały rytm PS1 ↔ PS2

- **wtorek 20:00** — aktualizacja Issues/PR i handoff zespołów,
- **środa — PS2** — praca na aktualnym stanie po PS1,
- **środa po zajęciach** — PS2 zapisuje najważniejsze ustalenia i blockery,
- **czwartek — PS1** — praca na aktualnym stanie po PS2.

Wyniki jednej grupy są wejściem do pracy drugiej. Nie tworzymy równoległych, konkurencyjnych rozwiązań bez uzgodnienia przez Issue/ADR.

## Najważniejsze zasady

1. Każde zadanie ma jednego właściciela.
2. Jedna osoba ma maksymalnie jedno główne zadanie `In progress`.
3. Kod i dokumentacja trafiają do `main` tylko przez Pull Request.
4. Każdy wykonuje również review lub test cudzej pracy.
5. Zadanie jest zakończone dopiero po spełnieniu Definition of Done.
6. AI jest dozwolone, ale autor odpowiada za rezultat i musi go rozumieć.
7. Źródłem prawdy są GitHub Issues, Pull Requests i GitHub Project.
EOF

cat > manual/00-start.md <<'EOF'
# Start projektu

Dokładny scenariusz pierwszych zajęć PS1 znajduje się na stronie **[Zajęcia 1 — PS1](11-zajecia-01-ps1.md)**.

## Dwie grupy, jeden projekt

- **PS1 — czwartek**
- **PS2 — środa**

Na początku Discovery:
- PS1 pracuje w zespołach **A/B/C**,
- PS2 rozpocznie od zespołów **D/E/F**, wykorzystując wyniki A/B/C.

A–F to tymczasowe strumienie Discovery, a nie stały podział modułów do końca semestru.

## Profil studenta

Każdy student tworzy raz:

**Issues → New issue → Student profile**

Tytuł:

`[PROFILE] Imię Nazwisko`

Profil służy do utworzenia możliwie zrównoważonych zespołów.

## Zespół i lead

W każdej grupie PS powstają trzy zespoły po około 4 osoby.

Lead:
- zna aktualne zadania członków zespołu,
- pilnuje aktualności Issues,
- zbiera blockery i pytania,
- przygotowuje krótki handoff,
- kontaktuje się z prowadzącym,
- nadal wykonuje własne zadanie.

Lead nie jest przełożonym i nie wykonuje pracy za inne osoby.

## Handoff

**Do wtorku 20:00** praca z poprzedniego tygodnia ma mieć aktualny stan w Issues/PR, a lead publikuje krótki handoff.

PS2 w środę i PS1 w czwartek rozpoczynają od przeczytania aktualnego handoffu oraz boardu projektu.
EOF

cat > manual/02-organizacja.md <<'EOF'
# Organizacja pracy

## Struktura

- **PS1 — czwartek:** zespoły A/B/C
- **PS2 — środa:** zespoły D/E/F

Po Discovery zespoły pozostają jednostkami organizacyjnymi, ale zadania mogą być przydzielane dynamicznie ze wspólnego backlogu.

## Lead zespołu

Lead:
- zna stan prac członków zespołu,
- pilnuje, aby każdy miał konkretne Issue,
- pilnuje aktualności statusów,
- wykrywa duplikaty i zależności,
- zbiera blockery i pytania,
- publikuje handoff zespołu,
- przekazuje prowadzącemu krótki status,
- nadal wykonuje własną pracę.

## Stały rytm PS1 ↔ PS2

### Wtorek 20:00
- aktualizacja Issues i PR,
- zakończone zadania mają link do rezultatów,
- niedokończone zadania mają aktualny status i blocker,
- lead publikuje handoff.

### Środa — PS2
- PS2 zaczyna od boardu i handoffów,
- nie powtarza pracy PS1,
- korzysta z istniejących dokumentów, decyzji i kodu.

### Środa po zajęciach
- leadzi PS2 zapisują nowe ustalenia, pytania i blockery.

### Czwartek — PS1
- PS1 rozpoczyna od aktualnego stanu po PS2.

## Format handoffu

```text
## Handoff — YYYY-MM-DD

### Zakończone
- #12 — ... — PR #31

### W toku
- #14 — ... — czego brakuje

### Najważniejsze ustalenia
- ...

### Blockery / pytania
- ...

### Ważne dla kolejnej grupy
- ...
```

Handoff ma być krótki i opierać się na linkach do Issues/PR.

## Odpowiedzialność indywidualna

Ocena jest indywidualna. Każde Issue ma konkretnego właściciela.

## Wspólne mechanizmy

Dla auth, workflow, PDF/DOCX, CI, shared UI itp. wyznaczany jest owner i backup. Nie tworzymy wielu niezależnych implementacji tego samego mechanizmu.
EOF

cat > manual/06-postep.md <<'EOF'
# Tygodniowe rozliczenie

Nie przesyłamy cotygodniowych raportów DOCX.

Źródłem informacji o postępie są Issue, Pull Request, review/test i status w GitHub Project.

## Termin

**Do wtorku do 20:00** każdy student aktualizuje stan swojej pracy i komentarz w Issue typu **Student progress**:

```text
Tydzień: 2

DONE:
#41 — ...

PR:
#57

REVIEW/TEST:
#61

BLOCKER:
brak

NEXT:
#66
```

Dowodem pracy są podlinkowane artefakty.

Lead dodatkowo publikuje handoff zespołu, aby PS2 w środę i PS1 w czwartek pracowały na aktualnym stanie projektu.

Jeżeli ważne ustalenie powstaje podczas środowych zajęć PS2, lead PS2 zapisuje je tego samego dnia.
EOF

cat > manual/11-zajecia-01-ps1.md <<'EOF'
# Zajęcia 1 — PS1 (czwartek)

Ta strona jest **instrukcją wykonania zajęć**. Pracuj kolejno od punktu 1 do końca.

Nie trzeba znać całego starego systemu. Prowadzący pokaże głównie swój widok osoby realizującej projekt. Braki wiedzy zapisujemy jako pytania do administratora lub Działu Nauki.

## Co ma istnieć po zajęciach

1. profile wszystkich studentów,
2. trzy zespoły A/B/C,
3. trzech tymczasowych leadów,
4. jedno konkretne Issue dla każdego studenta,
5. review jednego Issue kolegi,
6. rozpoczęta realizacja zadania,
7. lista pytań i blockerów.

---

## 1. Utwórz profil

**Issues → New issue → Student profile**

Tytuł:

`[PROFILE] Imię Nazwisko`

Uzupełnij formularz i poczekaj na przydział do A/B/C.

---

## 2. Podział na zespoły

### A — obecny system i dane
Cel: ustalić, co wiemy o obecnym systemie, jego danych i regułach.

### B — procesy, formularze i wymagania
Cel: ustalić, jakie procesy i dokumenty powinien wspierać nowy system.

### C — Core i środowisko techniczne
Cel: przygotować fundament techniczny oraz decyzje wspólne dla późniejszych modułów.

Każdy zespół otrzymuje tymczasowego leada.

---

# 3. Zadania zespołu A

Każda osoba bierze jedno zadanie.

## A1 — inwentaryzacja widoku realizatora

**Tytuł:** `[DISCOVERY-A1] Inwentaryzacja funkcji widoku realizatora projektu`

**Rezultat:** `docs/legacy/current-user-view.md`

Tabela:

| Ekran/funkcja | Co użytkownik widzi | Co może zrobić | Dane wejściowe | Wynik | Pytania |
|---|---|---|---|---|---|

Acceptance criteria:
- opisano pokazane ekrany,
- rozróżniono odczyt i operacje,
- zapisano niewiadome,
- nie dopisano funkcji, których nie potwierdzono.

## A2 — model pojęciowy z UI

**Tytuł:** `[DISCOVERY-A2] Model danych widoczny z perspektywy realizatora`

**Rezultat:** `docs/legacy/domain-from-ui.md`

Zidentyfikuj obiekty, np. użytkownik, projekt/praca, rok, budżet, kategoria kosztów, wydatek, rezerwacja.

Acceptance criteria:
- lista podstawowych obiektów,
- relacje między nimi,
- rozróżnienie: pewne / przypuszczalne,
- pytania do weryfikacji po otrzymaniu bazy.

## A3 — reguły finansowe

**Tytuł:** `[DISCOVERY-A3] Analiza reguł finansowych obecnego systemu`

**Rezultat:** `docs/legacy/finance-rules.md`

Przeanalizuj środki przyznane, plan kosztów, wydatki, rezerwacje, środki dostępne, lata i kategorie.

Acceptance criteria:
- znane zależności/wzory,
- co najmniej 3 przykładowe przypadki,
- oznaczone reguły niepewne,
- pytania do administratora/Działu Nauki.

## A4 — pytania do administratora

**Tytuł:** `[DISCOVERY-A4] Pytania do administratora i zakres reverse engineeringu`

**Rezultat:** `docs/legacy/questions-for-admin.md`

Uwzględnij role, funkcje niewidoczne dla realizatora, bazę, PHP, logowanie, integracje i dane do migracji.

Oznacz pytania jako **MUST / SHOULD / LATER**.

---

# 4. Zadania zespołu B

## B1 — katalog formularzy i procesów

**Tytuł:** `[DISCOVERY-B1] Katalog formularzy i procesów Działu Nauki`

**Rezultat:** `docs/requirements/forms-catalog.md`

| Nazwa | Kto rozpoczyna | Cel | Dane | Załączniki | Akceptacja/podpis | Dokument końcowy | Pytania |
|---|---|---|---|---|---|---|---|

## B2 — praca własna / wniosek / kosztorys

**Tytuł:** `[DISCOVERY-B2] Analiza procesu pracy własnej i kosztorysu`

**Rezultat:** `docs/requirements/process-research-work.md`

Opisz aktorów, start procesu, dane, stany, decyzje, zwrot do poprawy, załączniki, dokument końcowy i niewiadome.

## B3 — delegacje i konferencje

**Tytuł:** `[DISCOVERY-B3] Analiza delegacji i udziału w konferencjach`

**Rezultat:** `docs/requirements/process-travel-conference.md`

Porównaj wyjazd krajowy, zagraniczny i konferencję. Wskaż wspólne dane, różnice, dokumenty i pytania otwarte.

## B4 — wspólne elementy formularzy

**Tytuł:** `[DISCOVERY-B4] Wspólne elementy formularzy i dokumentów`

**Rezultat:** `docs/requirements/common-form-elements.md`

Szukaj elementów powtarzalnych: pracownik, jednostka, projekt, finansowanie, kwoty, daty, załączniki, akceptacje, status, PDF/DOCX, historia zmian.

---

# 5. Zadania zespołu C

## C1 — Django/PostgreSQL/Docker

**Tytuł:** `[DISCOVERY-C1] Bootstrap środowiska Django/PostgreSQL/Docker`

**Rezultat:** działający Pull Request ze szkieletem aplikacji.

Acceptance criteria:
- Django uruchamia się lokalnie,
- docelową bazą jest PostgreSQL,
- brak sekretów w repo,
- istnieje krótka instrukcja uruchomienia,
- istnieje prosty ekran/endpoint,
- CI jest zielone.

Nie implementuj jeszcze logiki biznesowej.

## C2 — początkowa architektura

**Tytuł:** `[DISCOVERY-C2] Początkowa architektura modularnego monolitu`

**Rezultat:** `docs/adr/ADR-001-initial-architecture.md`

Rozważ accounts/users, organizations, projects/research works, budgets, workflow, documents, attachments, audit.

Nie projektujemy mikrousług.

## C3 — PDF/DOCX

**Tytuł:** `[DISCOVERY-C3] Spike techniczny generowania PDF i DOCX`

**Rezultat:** `docs/adr/ADR-002-document-generation.md`

Porównaj co najmniej dwa sensowne rozwiązania. Zaproponuj wspólny mechanizm, a nie osobny generator dla każdego modułu.

## C4 — testy i CI

**Tytuł:** `[DISCOVERY-C4] Strategia testów, CI i środowiska testowego`

**Rezultat:** `docs/testing/strategy.md`

Opisz testy unit/integration/E2E, co blokuje merge, korzystanie ze środowiska testowego i anonimowej bazy.

---

# 6. Utwórz swoje Issue

Każdy student tworzy jedno własne Issue na podstawie przydzielonego A1–C4.

**Issues → New issue → Task / Feature**

Issue powinno zawierać:
- cel,
- zakres,
- konkretny rezultat,
- acceptance criteria,
- źródła/niewiadome,
- jednego Assignee.

Przykład:

```text
Cel:
Zidentyfikować funkcje widoku realizatora projektu.

Rezultat:
docs/legacy/current-user-view.md

Acceptance criteria:
- [ ] opisano pokazane ekrany
- [ ] rozróżniono odczyt i operacje
- [ ] zapisano niewiadome

Źródła:
demo prowadzącego + screeny
```

W Project ustaw:
- **Pod:** A/B/C,
- **Work Type:** zgodnie z zadaniem,
- **Size:** S/M/L według ustalenia z leadem/prowadzącym.

---

# 7. Review Issue kolegi

W zespole 4-osobowym:

- 1 → 2,
- 2 → 3,
- 3 → 4,
- 4 → 1.

Sprawdź:
1. Czy wiadomo, co ma powstać?
2. Czy rezultat jest konkretny?
3. Czy zakres jest realny na około tydzień?
4. Czy acceptance criteria są mierzalne?
5. Czy wiadomo, czego zadanie nie obejmuje?
6. Czy zapisano źródła, niewiadome lub zależności?

Komentarz:

```text
### Review Issue

Cel jasny: TAK / NIE
Rezultat jednoznaczny: TAK / NIE
Zakres odpowiedni: TAK / NIE
Acceptance criteria mierzalne: TAK / NIE

Brakuje / wymaga doprecyzowania:
...

Proponowana zmiana:
...
```

„OK”, „LGTM” albo „wszystko dobrze” nie jest review.

---

# 8. Zacznij realizację

Po review nie czekaj do następnych zajęć.

- dokumentacja/analityka → plik w `docs/` + PR,
- C1 → kod + PR,
- pracuj na osobnym branchu,
- nie pushuj bezpośrednio do `main`.

---

# 9. Raport leada na koniec zajęć

Maksymalnie 2–3 minuty:

```text
Zespół: A / B / C
Członkowie:
Lead:

Issues:
#...
#...
#...
#...

Czy każdy ma zadanie: TAK/NIE
Czy każde Issue ma review: TAK/NIE

Najważniejsze pytania/blockery:
1. ...
2. ...

Co zespół zrobi do wtorku 20:00:
...
```

Nie przygotowujemy prezentacji.

---

# 10. Do wtorku 20:00

Każdy:
- aktualizuje Issue,
- publikuje wynik przez Pull Request,
- aktualizuje Student progress,
- opisuje blocker, jeśli zadanie nie jest zakończone.

Lead:
- sprawdza stan zadań,
- publikuje krótki handoff zespołu.

Dzięki temu **PS2 w środę zaczyna od aktualnych wyników PS1**.
EOF

cat > manual/12-plan-discovery-a-f.md <<'EOF'
# Plan Discovery — zespoły A–F

A–F dotyczą pierwszej fazy projektu. Nie są stałym podziałem modułów na cały semestr.

## Rytm

- **PS1 — czwartek:** A/B/C
- **wtorek 20:00:** handoff wyników A/B/C
- **PS2 — środa:** D/E/F pracuje na wynikach A/B/C
- **środa po zajęciach:** handoff PS2
- **PS1 — czwartek:** kontynuacja na aktualnym stanie

## PS1

### A — obecny system i dane
- UI i funkcje aktualnego systemu,
- model pojęciowy,
- reguły finansowe,
- pytania do administratora.

### B — procesy, formularze i wymagania
- katalog spraw i formularzy,
- praca własna/kosztorys/rozliczenie,
- delegacje i konferencje,
- elementy wspólne formularzy.

### C — Core i środowisko
- Django/PostgreSQL/Docker,
- modularny monolit,
- PDF/DOCX,
- CI i testy.

## PS2 — plan wstępny

Dokładne D/E/F zostaną doprecyzowane po handoffie A/B/C.

### D — legacy, baza i migracja
- analiza PHP,
- analiza anonimowej bazy,
- mapowanie tabel,
- reguły ukryte w kodzie,
- migracja i testy zgodności.

### E — role, workflow i wymagania użytkowników
- realizator,
- Dział Nauki,
- kierownictwo,
- administrator,
- role/uprawnienia,
- akceptacja/zwrot/odrzucenie,
- scenariusze akceptacyjne MVP.

### F — pierwszy vertical slice
- wykorzystanie Core z C,
- mock logowania,
- użytkownik i role,
- lista projektów/prac,
- szczegóły projektu,
- pierwsze dane budżetowe,
- CI i testy.

F nie tworzy drugiego szkieletu aplikacji.

## Po Discovery

1. zamrażamy MVP,
2. klasyfikujemy MVP/P1/P2,
3. szacujemy S/M/L,
4. utrzymujemy jeden backlog,
5. zadania rozdzielamy zgodnie z potrzebą i obciążeniem.

Priorytet: działające MVP na początku grudnia.
EOF

# mkdocs.yml już powinien zawierać wpisy 11/12; dopisz je tylko jeśli ich brak.
python - <<'PY'
from pathlib import Path
p = Path("mkdocs.yml")
s = p.read_text(encoding="utf-8")
if "11-zajecia-01-ps1.md" not in s:
    marker = "  - FAQ: 10-faq.md\n"
    block = """  - Zajęcia:
      - Zajęcia 1 — PS1: 11-zajecia-01-ps1.md
      - Plan Discovery A–F: 12-plan-discovery-a-f.md
"""
    s = s.replace(marker, block + marker)
p.write_text(s, encoding="utf-8")
PY

git add .
git commit -m "Clarify PS1 PS2 handoff and first class instructions"
git push origin main

echo
echo "GOTOWE. GitHub Pages przebuduje się automatycznie."
