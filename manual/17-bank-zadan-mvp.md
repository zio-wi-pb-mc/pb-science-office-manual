# Bank propozycji — co można zrobić, gdy brakuje pomysłu

**Cel projektu:** do **31 stycznia 2027 r.** dostarczamy **wdrożoną, przetestowaną i odebraną przez Dział Nauki aplikację** zastępującą uzgodniony zakres starego systemu. Zespoły samodzielnie wybierają zadania i rozwiązania; roadmapa oraz Issues są propozycjami pomagającymi zaplanować pracę.


To **rezerwowe pomysły**, nie lista dodatkowych przydziałów. [Twarde terminy](23-plan-do-31-stycznia.md), [proponowane priorytety](16-propozycje-zadan-po-audycie.md), [macierz legacy](22-audyt-legacy-parity.md). Nie rozpoczynaj żadnego z poniższych zadań, jeśli istnieje już właściciel i Issue.

| Obszar | Przykładowy mały PR, jeśli brak osoby/fragmentu | Efekt akceptacyjny |
|---|---|---|
| **F/E** | Modele relacji użytkownik–projekt; test dostępu do cudzego budżetu | 403/404 także dla JSON i bezpośredniego URL; [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) |
| **F** | Model + migracja projektu, formularz edycji, test archiwum | Projekt zapisany w PostgreSQL i dostępny po restarcie; [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) |
| **A** | Zapis planu finansowego, rezerwacja, wydatek, rozliczenie częściowe, narzut | Oczekiwane wyniki matematyczne na danych trwałych; [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| **B** | Wyłącznie brakujący fragment F01 lub obowiązkowy ekran operacji admin po decyzji z Działem Nauki | Rzeczywisty zapis i test; [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) |
| **D** | Import kilku projektów różnych typów/lat i wyciągnięcie raportu odrzuceń | Idempotencja, zgodność sum, brak rzeczywistych danych w CI; [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) |
| **A/F** | Eksport kosztorysu CSV i historia wydatków | Zgodność z raportem w aplikacji i dostępem roli; [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) |
| **C** | Automatyczny E2E na obrazie Demo, backup i restore bazy | PASS całego flow `DEBUG=False`, nie tylko health; [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) |

**Możecie również zaproponować własny temat** — uzgodnijcie z liderem zależności i kryterium odbioru. **Nie rozdrabniać Issue na fikcyjne S/M/L.** O rozmiarze decydują zasady [#86](https://github.com/zio-wi-pb-mc/pb-science-office/issues/86), nie autor. Nie zaczynać nowych ADR lub kolejnych kopii słowników, drugiego szkieletu aplikacji ani nowego frontendu. Każdy nowy formularz spoza potwierdzonego legacy wymaga decyzji prowadzącego.

Przed utworzeniem Issue: sprawdź [PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls), [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues), [Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1), wskaż ownera, termin i sposób demonstracji. Studenci integrują tylko do `dev`.
