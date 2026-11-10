# Roadmap ZIO — od 10 listopada do 31 stycznia

!!! important "Swoboda wyboru zadań — obowiązująca zasada"
    **Żadne Issue wskazane w roadmapie ani banku zadań nie jest obowiązkowym przydziałem dla konkretnej grupy lub studenta.** To propozycje pomagające znaleźć sensowną pracę, szczególnie gdy zespół nie ma własnego pomysłu. Zespoły mogą proponować i realizować inne rozwiązania lub inaczej rozdzielić pracę między sobą, jeżeli prowadzą do potrzebnej funkcjonalności, nie duplikują istniejących PR i zachowują uzgodnione kontrakty. **Obowiązkowy jest wspólny cel i termin przekazania 31.01.2027, a nie numer Issue czy narzucona metoda implementacji.** Przed zmianą właściciela już trwającej pracy uzgodnij to z zainteresowanymi.


**Ten plan zastępuje dotychczasową roadmapę trzytygodniową. Ostateczne oddanie: 31.01.2027.** Pełne bramki i odpowiedzialności: [Plan zakończenia](23-plan-do-31-stycznia.md). Zakres legacy: [macierz](22-audyt-legacy-parity.md).

## Twarde terminy (bramki, nie obietnice)

| Docelowa data | Wspólny rezultat do odebrania | Przykładowa współpraca |
|---|---|---|
| **13.11** | Test dwóch kont, serwerowe uprawnienia oraz ścieżka logowanie → projekt → budżet w `DEBUG=False` | E/C/F |
| **20.11** | Akceptacja listy MUST przez Dział Nauki; lista niepewności i rezygnacji | Prowadzący + A–F |
| **27–30.11** | Pierwsza demonstracja pracownikom, feedback i protokół braków | F/C + prowadzący |
| **04.12** | Model projektów i CRUD na PostgreSQL [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) | F/D |
| **11.12** | Formularz F01 [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201), role i uprawnienia | B/E/F |
| **18.12** | Zapis planów i operacji finansowych [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) | A/F |
| **08.01** | Raporty [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215), import testowy [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) | A/D/F |
| **15.01** | Feature freeze | Wszyscy |
| **25.01** | Akceptacyjny odbiór biznesowy i techniczny [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) | Dział Nauki + prowadzący |
| **31.01** | Finalny release + instrukcje, backup/restore, przekazanie | Prowadzący/C |

!!! warning "Święta nie są pełnym sprintem"
    Krytyczny kod projektu i finansów trzeba scalić **przed 18 grudnia**. Zakładać ograniczoną dostępność między 21.12 a 06.01; w styczniu tylko domknięcie, nie przebudowę architektury.

## Przykładowe ścieżki pracy A–F — można wybrać inne

| Zespół | Możliwy temat 10–20.11 | Możliwy temat 21.11–18.12 | Możliwy temat 19.12–31.01 |
|---|---|---|---|
| **A** | [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209), [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185), [#204](https://github.com/zio-wi-pb-mc/pb-science-office/issues/204) | [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) zapis finansów i testy parytetu | [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) raporty, poprawki danych i odbiór |
| **B** | [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201): F01 | Dokończyć F01; następnie tylko potwierdzone MUST administracji | Testy formularzy, poprawki i wsparcie odbioru |
| **C** | [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207), test Demo `DEBUG=False` | Integracja, CI, automatyzacja migracji i E2E | [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) backup/restore, clean clone, release |
| **D** | [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132) przenieść do `dev` + mapowanie | [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) importer pod modele F/A | Uzgodnienia, parity, próbna migracja |
| **E** | [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173)/[#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) uprawnienia per projekt | Role i kontrola operacji admin/finanse/eksport | Testy bezpieczeństwa i odmów |
| **F** | [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) z E/C, poprawić [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) | [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) CRUD, integracja [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) i F01 | Uspójnienie aplikacji, bugfix, odbiór |

## Dlaczego zmieniamy plan?

W dniu 10.11 kod nadal ma syntetyczną listę projektów, brak modelu projektu w DB, brak trwałych operacji finansowych i importu oraz niedomknięty dostęp do własnych prac. Liczba PR nie mierzy zastępowalności legacy. Szczegółowa, źródłowo ograniczona ocena 27 obszarów znajduje się w [audycie](22-audyt-legacy-parity.md).

**Cel końcowy nie oznacza automatycznie wdrożenia produkcyjnego:** decyzja o użyciu realnych danych i zastąpieniu starego systemu wymaga pozytywnego odbioru oraz zgody uczelni. Jeżeli nie wszystkie funkcje okażą się wykonalne, musi powstać jawna lista braków wraz z decyzją biznesową, nie ukryta zmiana definicji „wszystko”.

[GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1) · [Zadania](16-propozycje-zadan-po-audycie.md) · [Audyt](22-audyt-legacy-parity.md)
