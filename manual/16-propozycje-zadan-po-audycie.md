# Co robić teraz — propozycje priorytetów do stycznia

!!! important "Swoboda wyboru zadań — obowiązująca zasada"
    **Żadne Issue wskazane w roadmapie ani banku zadań nie jest obowiązkowym przydziałem dla konkretnej grupy lub studenta.** To propozycje pomagające znaleźć sensowną pracę, szczególnie gdy zespół nie ma własnego pomysłu. Zespoły mogą proponować i realizować inne rozwiązania lub inaczej rozdzielić pracę między sobą, jeżeli prowadzą do potrzebnej funkcjonalności, nie duplikują istniejących PR i zachowują uzgodnione kontrakty. **Obowiązkowy jest wspólny cel i termin przekazania 31.01.2027, a nie numer Issue czy narzucona metoda implementacji.** Przed zmianą właściciela już trwającej pracy uzgodnij to z zainteresowanymi.


**Stan: 10.11.2026. Nieprzekraczalny deadline: 31.01.2027.** [Pełny harmonogram](23-plan-do-31-stycznia.md) · [Macierz brakujących funkcji starego systemu](22-audyt-legacy-parity.md).

!!! warning "Zmiana priorytetu"
    Realizujemy wspólnie funkcjonalności **MUST** uzgodnione z Działem Nauki; wybór konkretnych Issues i podziału pracy pozostaje elastyczny. Nie dokładamy nowego workflow ani wszystkich 58 formularzy bez potwierdzenia, że są niezbędne do zastąpienia legacy. 20 listopada zamykamy listę obowiązkowych funkcji na podstawie audytu i konsultacji.

## P0 — aktualne blokery

| Oczekiwany rezultat | Proponowana współpraca | Przykładowe Issue / PR | Kryterium odbioru |
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

## Proponowane kierunki dla zespołów (do samodzielnego wyboru)

| Zespół | Przykładowy najbliższy temat | Możliwy kolejny kierunek |
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
