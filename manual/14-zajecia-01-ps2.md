# Zajęcia 1 — PS2 (środa)

PS2 **nie zaczyna projektu od zera**.

Przed utworzeniem własnych zadań przeczytaj:

1. handoff zespołów A/B/C,
2. aktualny GitHub Project,
3. zakończone lub otwarte PR z PS1.

Zadania D/E/F należy doprecyzować na podstawie faktycznych wyników A/B/C. Nie powtarzamy tej samej analizy.

## Co ma istnieć po zajęciach

1. trzy zespoły D/E/F,
2. trzech tymczasowych leadów,
3. jedno konkretne Issue dla każdego studenta,
4. review jednego Issue kolegi,
5. rozpoczęta realizacja zadania,
6. handoff PS2 dla czwartkowego PS1.

---

# 1. Profil i podział

Jeżeli nie masz jeszcze profilu:

**Issues → New issue → Student profile**

Tytuł:

`[PROFILE] Imię Nazwisko`

Prowadzący tworzy zespoły D/E/F i wybiera tymczasowych leadów.

---

# 2. Zespół D — legacy, baza i migracja

Celem D jest pogłębienie analizy legacy na podstawie kodu PHP i anonimowej bazy.

Jeżeli kod/baza nie są jeszcze dostępne, wykonaj część przygotowawczą i zapisz dokładnie, czego brakuje. Nie twórz fikcyjnych wniosków.

## D1 — mapa kodu legacy

**Tytuł:** `[DISCOVERY-D1] Mapa struktury i punktów wejścia kodu PHP`

**Rezultat:** `docs/legacy/php-code-map.md`

Uwzględnij:
- główne katalogi/moduły,
- punkty wejścia,
- miejsca związane z projektami/budżetem,
- potencjalne integracje,
- miejsca wymagające dalszej analizy.

## D2 — schemat anonimowej bazy

**Tytuł:** `[DISCOVERY-D2] Mapa tabel i relacji starej bazy`

**Rezultat:** `docs/legacy/database-map.md`

Uwzględnij:
- tabele istotne dla P0,
- klucze i relacje,
- pola finansowe,
- pola użytkowników/projektów,
- elementy niejasne.

## D3 — plan migracji

**Tytuł:** `[DISCOVERY-D3] Strategia migracji danych legacy`

**Rezultat:** `docs/legacy/migration-strategy.md`

Uwzględnij:
- co migrujemy do MVP,
- mapowanie legacy → new,
- identyfikatory historyczne,
- dane niepełne/niespójne,
- walidację po migracji.

## D4 — testy zgodności legacy ↔ new

**Tytuł:** `[DISCOVERY-D4] Plan testów zgodności starego i nowego systemu`

**Rezultat:** `docs/testing/legacy-parity.md`

Zaproponuj konkretne przypadki porównawcze, np.:
- lista prac/projektów,
- przyznane środki,
- wydatki,
- rezerwacje,
- saldo,
- widoczność danych użytkownika.

---

# 3. Zespół E — role, workflow i użytkownicy

Celem E jest określenie sposobu działania systemu z perspektywy różnych aktorów.

## E1 — aktorzy i role

**Tytuł:** `[DISCOVERY-E1] Macierz aktorów, ról i uprawnień`

**Rezultat:** `docs/requirements/roles-permissions.md`

Uwzględnij co najmniej:
- realizatora projektu/pracy,
- Dział Nauki,
- kierownictwo,
- administratora.

Nie zgaduj szczegółowych uprawnień — oznacz niewiadome.

## E2 — model workflow

**Tytuł:** `[DISCOVERY-E2] Wspólny model statusów i akceptacji`

**Rezultat:** `docs/requirements/workflow-model.md`

Uwzględnij:
- draft,
- submitted,
- returned for correction,
- approved/rejected,
- historię zmian,
- komentarze,
- możliwe różnice między procesami.

## E3 — widoki Działu Nauki i kierownictwa

**Tytuł:** `[DISCOVERY-E3] Wymagania widoków Działu Nauki i kierownictwa`

**Rezultat:** `docs/requirements/office-management-views.md`

Zidentyfikuj:
- kolejkę spraw,
- filtrowanie,
- podgląd projektu/budżetu,
- decyzje,
- raporty/zestawienia,
- pytania do przyszłych użytkowników.

## E4 — scenariusze akceptacyjne MVP

**Tytuł:** `[DISCOVERY-E4] Scenariusze akceptacyjne pierwszego workflow MVP`

**Rezultat:** `docs/testing/mvp-acceptance-scenarios.md`

Przygotuj scenariusze typu Given/When/Then dla jednego pełnego przepływu:
pracownik → wysłanie → Dział Nauki → zwrot/poprawa → zatwierdzenie → dokument/audit.

---

# 4. Zespół F — pierwszy vertical slice

F wykorzystuje wynik zespołu C.

**Nie twórz drugiego niezależnego skeletonu aplikacji.**

Jeżeli C1 nie zostało ukończone, pierwszym zadaniem F jest pomóc dokończyć/zweryfikować istniejący skeleton.

## F1 — uruchomienie i integracja Core

**Tytuł:** `[DISCOVERY-F1] Weryfikacja i integracja skeletonu aplikacji`

**Rezultat:** PR doprowadzający istniejący skeleton do powtarzalnego uruchomienia.

Acceptance criteria:
- instrukcja działa na czystym środowisku,
- aplikacja i PostgreSQL startują,
- CI przechodzi,
- nie powstaje równoległy framework.

## F2 — użytkownik i mock logowania

**Tytuł:** `[DISCOVERY-F2] Minimalny model użytkownika/roli i mock logowania`

**Rezultat:** pierwszy działający fragment aplikacji.

Nie integrujemy jeszcze produkcyjnego SSO. Interfejs powinien umożliwiać późniejszą podmianę providera.

## F3 — lista i szczegóły projektów/prac

**Tytuł:** `[DISCOVERY-F3] Pierwszy vertical slice: lista i szczegóły projektu`

**Rezultat:** ekran lista → szczegóły na danych testowych/fixtures.

Uwzględnij tylko pola potwierdzone przez A/D/B.

## F4 — pierwszy widok budżetu

**Tytuł:** `[DISCOVERY-F4] Pierwszy widok podsumowania budżetu`

**Rezultat:** ekran z testowymi wartościami: środki, wydatki, rezerwacje, dostępne saldo.

Reguły muszą wynikać z potwierdzonych ustaleń A/D. Nie wymyślaj własnych zasad finansowych.

---

# 5. Issue i review

Każdy student tworzy jedno własne Issue według takiego samego standardu jak PS1:

- cel,
- zakres,
- rezultat,
- acceptance criteria,
- zależności/źródła,
- jeden Assignee.

Następnie wykonuje review Issue kolegi ze swojego zespołu.

---

# 6. Handoff PS2 → PS1

Na końcu zajęć każdy lead raportuje status.

**Po zajęciach, najpóźniej do 20:00 w środę**, lead publikuje handoff:

```text
## Handoff — YYYY-MM-DD

### Zakończone
- ...

### Rozpoczęte
- ...

### Najważniejsze ustalenia
- ...

### Blockery / pytania
- ...

### Ważne dla PS1 w czwartek
- ...
```

PS1 w czwartek zaczyna od przeczytania tego handoffu.
