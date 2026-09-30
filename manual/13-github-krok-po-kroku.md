# GitHub — krok po kroku

Ta strona opisuje podstawową pracę z projektem. Jeżeli nie wiesz, gdzie wejść lub co kliknąć, zacznij tutaj.

## Najważniejsze adresy

**Manual:**

https://zio-wi-pb-mc.github.io/pb-science-office-manual/

**Repozytorium projektu:**

https://github.com/zio-wi-pb-mc/pb-science-office

**Dashboard / backlog projektu:**

https://github.com/orgs/zio-wi-pb-mc/projects

Na stronie Projects wybierz:

**ZIO 2026 — PB Science Office**

---

## 1. Dołącz do organizacji

Prowadzący zaprasza Cię do organizacji:

`zio-wi-pb-mc`

Zaakceptuj zaproszenie GitHub.

Po zaakceptowaniu powinieneś mieć dostęp do prywatnego repozytorium:

`pb-science-office`

Jeżeli repozytorium zwraca 404 albo nie widzisz Projectu, najpierw sprawdź, czy zaproszenie do organizacji zostało zaakceptowane.

---

## 2. Utwórz profil

W repozytorium:

**Issues → New issue → Student profile**

Tytuł:

`[PROFILE] Imię Nazwisko`

Profil tworzysz tylko raz.

---

## 3. Znajdź backlog

Wejdź:

**Organization → Projects → ZIO 2026 — PB Science Office**

Podstawowe statusy:

`BACKLOG → READY → IN PROGRESS → REVIEW → TEST → DONE`

`BLOCKED` oznacza zadanie, którego nie można aktualnie kontynuować.

Nie zmieniaj samodzielnie priorytetu `MVP/P1/P2`, jeżeli nie zostało to uzgodnione z leadem/prowadzącym.

---

## 4. Utwórz Issue

W repozytorium:

**Issues → New issue → Task / Feature**

Issue powinno zawierać:

- cel,
- zakres,
- konkretny rezultat,
- acceptance criteria,
- źródła lub zależności,
- jednego właściciela.

Nowe zwykłe Issue trafia automatycznie do Projectu.

W Project ustaw, jeżeli zostało uzgodnione:

- **Zespół:** A–F,
- **Work Type,**
- **Size:** S/M/L.

---

## 5. Pobierz repozytorium na komputer

Jednorazowo:

```bash
git clone https://github.com/zio-wi-pb-mc/pb-science-office.git
cd pb-science-office
```

Przed rozpoczęciem kolejnej pracy:

```bash
git switch main
git pull
```

## 6. Rozpoczęcie pracy

Po zaakceptowaniu zakresu zadania:

1. przypisz Issue do siebie,
2. ustaw `IN PROGRESS`,
3. utwórz osobny branch.

Przykład dla Issue `#123`:

```bash
git switch -c feature/123-budget-summary
```

Po wykonaniu zmian:

```bash
git status
git add .
git commit -m "Implement budget summary"
git push -u origin feature/123-budget-summary
```

Nie pracuj bezpośrednio na `main`.

---

## 7. Pull Request

Po wykonaniu zadania utwórz Pull Request do `main`.

PR powinien zawierać:

```text
Closes #123

Co zrobiono:
...

Jak sprawdzić:
...

Testy:
...

Istotne użycie AI:
...
```

Merge jest możliwy dopiero po:

- zielonym CI,
- minimum jednym approval,
- rozwiązaniu dyskusji review.

---

## 8. Review

Review Issue i review kodu to dwie różne rzeczy.

### Review Issue

Sprawdza, czy zadanie jest dobrze określone **przed rozpoczęciem pracy**.

### Review Pull Request

Sprawdza rezultat:

- zgodność z wymaganiem,
- poprawność implementacji,
- przypadki brzegowe,
- testy,
- czytelność i utrzymywalność.

Autor nie zatwierdza własnego PR.

---

## 9. Co oznacza „zespół”

W dokumentacji używamy nazw **Zespół A–F**.

W GitHub Project pole może być widoczne jako `Zespół` lub `Pod`. Oznacza to samo: małą grupę roboczą około 4 osób.

Zespół pomaga organizować pracę, ale każde Issue ma indywidualnego właściciela.

---

## 10. Tygodniowy rytm

**Do wtorku 20:00:**

- zaktualizuj Issue,
- podlinkuj PR/rezultat,
- wykonaj wymagane review/test,
- zaktualizuj Student progress,
- wpisz blocker, jeżeli istnieje.

Lead zespołu publikuje handoff.

**Środa:** PS2 pracuje na aktualnym stanie.

**Czwartek:** PS1 pracuje na stanie po PS2.

---

## 11. Gdy czegoś nie wiesz

Najpierw:

1. sprawdź instrukcję zajęć,
2. sprawdź Issue i Project,
3. zapytaj leada zespołu,
4. dopiero jeśli problem pozostaje — prowadzącego.

Istotne decyzje projektowe nie powinny pozostawać wyłącznie w prywatnych wiadomościach. Zapisz je w Issue, PR albo ADR.
