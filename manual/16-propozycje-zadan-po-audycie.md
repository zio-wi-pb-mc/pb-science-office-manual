# Co robić teraz — priorytety dostarczenia do stycznia

**Stan: 10.11.2026. Nieprzekraczalny deadline: 31.01.2027.** [Pełny harmonogram](23-plan-do-31-stycznia.md) · [Macierz brakujących funkcji starego systemu](22-audyt-legacy-parity.md).

!!! warning "Zmiana priorytetu"
    Implementujemy **MUST** dla użytkowników Działu Nauki. Nie dokładamy nowego workflow ani wszystkich 58 formularzy bez potwierdzenia, że są niezbędne do zastąpienia legacy. 20 listopada zamykamy listę obowiązkowych funkcji na podstawie audytu i konsultacji.

## P0 — aktualne blokery

| Wynik, nie ogólne zadanie | Owner | Issue / PR | Odbiór |
|---|---|---|---|
| Ograniczenia widoczności: użytkownik A nie odczyta B | E+F | [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) / [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) | HTML/JSON/lista/szczegóły/budżet 403 lub 404, PostgreSQL |
| Realny start Demo | C+F | [#205](https://github.com/zio-wi-pb-mc/pb-science-office/issues/205) / [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) | Test HTTP login → lista → szczegóły → budżet z `DEBUG=False` |
| Kanoniczny model projektu i CRUD | F+D | [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) | Record persistuje po ponownym uruchomieniu, migracje, testy |
| Operacje finansowe na zapisach | A+F | [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) | Plan → rezerwacja → rozliczenie/wydatek → prawidłowe saldo |
| Jeden formularz F01 | B+F | [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) | Zapis, edycja, walidacja i odczyt w tej samej aplikacji |
| Kontrakt migracji danych | D+F | [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) | Klucze i lata, dry run, przypadek parity |
| Odbiór zakresu i użytkownika | Prowadzący+C | [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) | Lista funkcji MUST i scenariusze pracowników |

## P1 — równolegle, bez opóźniania P0

| Kierunek | Do zrobienia |
|---|---|
| Raporty i eksporty | [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) — CSV/druk, listy, bilanse, filtry, zakres po potwierdzeniu z użytkownikiem |
| Prace z APPROVE | [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209), [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185) — autor/lead dokonuje merge do `dev` po potwierdzeniu CI i konfliktów |
| Mobilny projekt | [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) — konflikt po #212, rozwiązać i sprawdzić działa z nowym przepływem |
| Stare PR | [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) (Draft) i [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132) (do `main`) — przenieść merytoryczny zakres do nowych niewielkich PR na `dev`, nie scalać starego ogromnego diff |
| Infrastruktura opcjonalna | [#196](https://github.com/zio-wi-pb-mc/pb-science-office/issues/196) doctor — **odłożyć**, jeśli nie usuwa konkretnego blockera z Demo |

## Warunki samodzielnego merge studentów

`feature → dev`: mały diff, aktualna baza `dev`, zielone CI, merytoryczny review, demonstracja, powiązany Issue. Integrują autor i lead. **Nie przyznajemy nowych punktów tylko za stworzenie Issues, logi ani duży PR.**

`dev → main`: tylko prowadzący po zamknięciu bramki. W styczniu stabilizujemy, a nie dopisujemy nowe moduły.

## Skład i odpowiedzialności

| Zespół | Najbliższy konkretny wynik | Cel do końca grudnia |
|---|---|---|
| **A / Daniel Perkowski** | [#204](https://github.com/zio-wi-pb-mc/pb-science-office/issues/204), [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209), [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185) | [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) — trwałe finanse, parytet reguł |
| **B / Karina Chilkiewicz** | [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201): jeden wspólny F01 | Wspierać pozostałe **potwierdzone MUST**, nie tworzyć nowych formularzy bez decyzji |
| **C / Vladislav Matveev** | [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207), Demo `DEBUG=False` | [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) — deployment, test E2E, backup/restore |
| **D / Tomasz Sidoruk** | [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132) przenieść na `dev` małym PR | [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) importer i raport uzgodnienia |
| **E / Michał Borawski** | [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173), [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) i test dwóch użytkowników | Role, zakres danych, autoryzacja zapisu i eksportu |
| **F / Paweł Kozikowski** | Integracja [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212), konflikt [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) | [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) — CRUD projektów; integracja A/E/D |

## Blokery do eskalacji

Jeżeli do **13.11** nie można przejść bezpiecznie pełnej ścieżki, lead E/F/C zgłasza konkretny FAIL na [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217). Jeśli do **20.11** nie ma uzgodnionych MUST z Działem Nauki, prowadzący zatwierdza *tymczasowy* scope i jawnie oznacza niezweryfikowane funkcje — nie twierdzimy, że to pełny zamiennik.

[Roadmap](23-plan-do-31-stycznia.md) · [Audyt funkcjonalności](22-audyt-legacy-parity.md)
