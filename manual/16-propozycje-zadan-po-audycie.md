# Propozycje zadań po otrzymaniu kodu legacy

**Data propozycji:** 8.10.2026  
**Status:** **POMYSŁY DO WYBORU** — nie są przydziałami, zatwierdzonymi Issues ani decyzją o MVP.  
**Powiązanie:** [Zajęcia 2 — kod legacy i Discovery 2.0](15-zajecia-02-kod-legacy.md).

## Jak korzystać z listy

Przed utworzeniem Issue sprawdź istniejące zadania/PR i porozmawiaj z leadem. Temat może wymagać zawężenia, połączenia z już prowadzonym Issue albo odłożenia. Oznaczenia `A-LEG-01` itd. są **lokalnymi identyfikatorami propozycji**, a nie numerami GitHub Issues. Priorytety (`P0/P1`) są **orientacyjne**.

Zadanie powinno mieć jednego właściciela, konkretny plik wynikowy, źródła, listę niewiadomych, kryteria akceptacji i peer review. Jako źródła wolno wskazywać nazwy klas/funkcji bez kopiowania prywatnych danych lub sekretów.

## A — obecny system, dane, finanse

| Kod | Propozycja | Sugerowany rezultat | Orientacyjnie |
|---|---|---|---|
| **A-LEG-01** | Mapa typów prac i ich wspólnych/różnych pól | `docs/legacy/project-types.md` | P0 |
| **A-LEG-02** | Rezerwacja a wydatek: znaczenie i rozliczenie częściowe | `docs/legacy/reservation-life-cycle.md` + scenariusze syntetyczne | P0 |
| **A-LEG-03** | Uzgodnienie definicji salda i kosztów pośrednich | `docs/legacy/finance-reconciliation.md` | P0 |

**Warunek:** wzory nie mogą być przedstawiane jako zatwierdzone reguły księgowe bez testów i potwierdzenia administratora.

## B — procesy, formularze i wymagania (również nowa osoba)

| Kod | Propozycja | Sugerowany rezultat | Orientacyjnie |
|---|---|---|---|
| **B-LEG-01** | Proces pracy własnej: co obsługuje legacy, a co pozostaje poza nim | `docs/requirements/legacy-own-work-process.md` | P0 |
| **B-LEG-02** | Katalog raportów, eksportów i dokumentów | `docs/requirements/output-artifacts-catalog.md` | P1 |
| **B-LEG-03** | Aktualizacja pytań do administratora po otrzymaniu kodu | aktualizacja `docs/legacy/questions-for-admin.md` | P1 |
| **B-LEG-04** | **Mapa pól formularzy, źródeł danych i walidacji** | `docs/requirements/legacy-form-fields.md` | P1 |
| **B-LEG-05** | **Scenariusze akceptacyjne dla 1–2 potwierdzonych procesów** | `docs/testing/legacy-process-scenarios.md` | P1 |

**Dodatkowa osoba w B:** do rozważenia B-LEG-04 lub B-LEG-05. Lead najpierw sprawdza bieżące zadania, a zakres ustala z prowadzącym. Te tematy nie wymuszają przekazywania cudzych Issues.

Dla **B-LEG-04** warto zebrać co najmniej 2 reprezentatywne formularze/operacje: pole, typ, wymaganie, regułę walidacji, źródło, miejsce użycia, status potwierdzenia. Dla **B-LEG-05**: co najmniej 5 scenariuszy Given/When/Then, jawnie oznaczając założenia, których legacy nie potwierdza.

## C — Core, testy, dokumenty

| Kod | Propozycja | Sugerowany rezultat | Orientacyjnie |
|---|---|---|---|
| **C-LEG-01** | ADR modelu finansowego nowego systemu (bez migracji produkcyjnej) | `docs/adr/ADR-003-financial-domain.md` | P0 |
| **C-LEG-02** | Testy golden master finansów na sztucznych danych | `tests/fixtures/finance_cases.json` i opis scenariuszy | P0 |
| **C-LEG-03** | Weryfikacja ADR PDF/DOCX względem realnych raportów legacy | aktualizacja `docs/adr/ADR-002-document-generation.md` | P1 |

## D — schemat, migracja, jakość danych

| Kod | Propozycja | Sugerowany rezultat | Orientacyjnie |
|---|---|---|---|
| **D-LEG-01** | Diagram logicznych relacji i rejestr tabel | `docs/legacy/schema-map.md` | P0 |
| **D-LEG-02** | Identyfikatory legacy, lata i kontynuacje prac | `docs/migration/legacy-id-and-years.md` | P0 |
| **D-LEG-03** | Lista kontroli jakości i integralności migracji | `docs/migration/data-quality-checklist.md` | P1 |

Brak zadeklarowanych kluczy obcych nie jest dowodem, że każda relacja jest błędna. Analiza danych rzeczywistych może odbywać się tylko w zatwierdzonym środowisku i zakresie uprawnień.

## E — role, uprawnienia, workflow

| Kod | Propozycja | Sugerowany rezultat | Orientacyjnie |
|---|---|---|---|
| **E-LEG-01** | Macierz aktorów, operacji i zasięgu danych | `docs/requirements/legacy-permissions-matrix.md` | P0 |
| **E-LEG-02** | Rozdzielenie flag legacy od stanów projektowanego workflow | `docs/requirements/statuses-and-transitions.md` | P0 |
| **E-LEG-03** | Model autoryzacji i testy uprawnień nowej aplikacji | `docs/security/authorization-matrix.md` | P0 |

## F — pierwszy działający fragment nowego systemu

W zespole F **obowiązuje dotychczasowa lista Discovery-F1–F4** z pierwszych zajęć. W szczególności: nie powstaje drugi szkielet aplikacji, a widoki używają danych testowych. Na tym etapie **nie proponuje się nowego, konkurencyjnego backlogu dla F**. Zespół dostosuje własne otwarte Issues po dostarczeniu wyników A–E.

## Przed zatwierdzeniem zadania

- [ ] Nie istnieje już Issue/PR o tym samym zakresie.
- [ ] Rezultat można zweryfikować w ciągu ok. tygodnia pracy.
- [ ] Źródła i ograniczenia są jawne.
- [ ] Przykłady zawierają tylko dane syntetyczne.
- [ ] Zależności od innych zespołów są zapisane.
- [ ] Lead i prowadzący zaakceptowali zakres i priorytet.

**Odrębnie po stronie prowadzącego/administratora:** kwalifikacja danych do dydaktyki, kontrola i wymiana sekretów, konfiguracja serwera, rozstrzygnięcie rozbieżności księgowych oraz zakres migracji. Nie zamieniać tych punktów w samodzielne zadania studenta bez odpowiednich uprawnień.
