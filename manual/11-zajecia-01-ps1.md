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

PS1 nie przygotowuje dodatkowego raportu w piątek. Po czwartkowych zajęciach pracuje normalnie do wspólnego terminu **wtorek 20:00**.
