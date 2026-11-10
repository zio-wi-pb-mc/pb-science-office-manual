# Plan zakończenia ZIO — twardy termin 31 stycznia 2027

**Cel projektu:** do **31 stycznia 2027 r.** dostarczamy **wdrożoną, przetestowaną i odebraną przez Dział Nauki aplikację** zastępującą uzgodniony zakres starego systemu. Zespoły samodzielnie wybierają zadania i rozwiązania; roadmapa oraz Issues są propozycjami pomagającymi zaplanować pracę.


**Stan planu: 10.11.2026.** Harmonogram uwzględnia okres świąteczny oraz czas na wdrożenie i testy użytkowników.

## Bramy dostawy

**Krytyczna ścieżka wdrożeniowa:** do **10.01** koniec implementacji, do **15.01** wdrożenie w uzgodnionym środowisku i migracja próbna, **16–25.01** testy z pracownikami Działu Nauki i poprawki, **26–30.01** retesty, backup/restore i podpisanie odbioru, **31.01** system już działa i jest odebrany. Gotowość produkcyjna wymaga zapewnienia hostingu, dostępu i decyzji bezpieczeństwa po stronie uczelni, więc tę zależność trzeba potwierdzić wcześniej.


| Data graniczna | Bramka | Kryterium PASS / FAIL |
|---|---|---|
| **13.11** | P0: naprawić reguły dostępu i Demo | Test A/B (własny vs cudzy projekt), HTML + JSON + budżet, autentyczne `DEBUG=False`; jeżeli FAIL, zablokować przechodzenie do kolejnej bramki |
| **20.11** | Audyt zaakceptowany przez Dział Nauki | [Macierz legacy](22-audyt-legacy-parity.md) z MUST/LATER/UNCERTAIN; potwierdzone pola i priorytety migracji |
| **27–30.11** | Pierwsze demo interesariuszom | Działający login → projekt → budżet, notatka z feedbacku, lista zmian; brak 500 i wycieku danych |
| **04.12** | Trwałe projekty | [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213): model/migracje/CRUD, F3 połączone z PostgreSQL, brak nowego „drugiego” modelu |
| **11.12** | F01 + główne prawa i role | [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) zintegrowane; praca na trwałych danych; E testuje odmowy |
| **18.12** | Krytyczne operacje finansowe | [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214): plan, rezerwacja, wydatek, rozliczenie, korekta, ślad zmian; obliczenia parity |
| **08.01** | Raporty i migracja próbna | [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215), [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216): podstawowe CSV/druk, importer testowy, zgodność sum i raport odrzuceń |
| **10.01** | FEATURE FREEZE / koniec rozwoju funkcji | Wszystkie MUST zaimplementowane albo jawnie oznaczone jako nieosiągalne z decyzją prowadzącego. Dalej tylko błędy krytyczne, bezpieczeństwo i poprawki odbioru |
| **20–25.01** | ODBIÓR po wdrożeniu | Instalacja od czystego klona, E2E dwóch ról, scenariusze finansowe, migracja/rollback, podpisana lista uwag |
| **31.01** | SYSTEM WDROŻONY I ODEBRANY | Finalny release `main`, dokumentacja operatora, backup i odtwarzanie, dane testowe, lista ograniczeń, komplet informacji dostępny bez udziału studentów |

**Uwaga:** bramka 13.11 to agresywny cel naprawczy; faktyczne dostępności studentów mogą wymusić eskalację, ale nie przesuwają terminu przekazania.

## Proponowany podział prac A–F — bez narzucania Issues

| Zespół / lead | Przykładowy temat na teraz | Możliwe kolejne funkcje | Punkty odniesienia |
|---|---|---|---|
| **A / Daniel Perkowski** | Domknąć [PR #209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209), [PR #210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [PR #185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185); rzeczywiste przypadki [#204](https://github.com/zio-wi-pb-mc/pb-science-office/issues/204) | **Trwałe finanse** [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214), potem raporty [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215). Kod i testy, nie słowniki |
| **B / Karina Chilkiewicz** | Zintegrować **jeden** F01: [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197)–[#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) | Po odbiorze F01 — minimum interfejsu administracyjnego dla legacy rejestrów / dane wejściowe do finansów; po decyzji o MUST |
| **C / Vladislav Matveev** | [PR #207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) poprawa haseł i kont demo; pełny E2E `DEBUG=False` | CI/backup/restore/instrukcja wdrożenia i test akceptacyjny [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217). Doctor [#196](https://github.com/zio-wi-pb-mc/pb-science-office/issues/196) tylko gdy nie przeszkadza |
| **D / Tomasz Sidoruk** | Zmniejszyć stary [PR #132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132) do małego PR na `dev`, wykonać jeden przypadek parity | **Importer** [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) dla faktycznych modeli F/A, próba migracji i raport zgodności |
| **E / Michał Borawski** | [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173)/[PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) dostosować do aktualnego `dev`; uprawnienia per projekt | Role admin/dziekan/rektor/kierownik, autoryzacja write/export i audyt z F/C |
| **F / Paweł Kozikowski** | Stabilizować [PR #212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) z E/C, usunąć konflikt [PR #211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) | **Model + CRUD projektów** [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213), integracja finansów [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) i wymaganych widoków |

**Lider pomaga zespołowi wybrać sensowne zadania i koordynuje uzgodniony plan, nie narzuca konkretnych Issues. Zespół może zaproponować inną ścieżkę do tego samego celu.** Po 20.11 każda osoba ma konkretny fragment aplikacji lub test akceptacyjny; PR powinny być małe, integrowane do `dev` codziennie lub po każdym ukończonym fragmencie. Prowadzący jest jedynym mergerem `dev → main`.

## Przykładowe Issues dla przekrojowych braków

- [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213) — F: kanoniczne projekty i ich edycja.
- [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) — A/F: zapisy i reguły finansowe.
- [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) — A/F: raportowanie, wydruk i CSV.
- [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) — D: importer i test parity.
- [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) — C/E/F: Demo, odbiór, przekazanie, kontrola zakresu.

Nowe Issues to **propozycje strumieni delivery**, a nie przymusowe przydziały ani dodatkowe punkty ani zachęta do kopiowania już istniejących #112/#155/#173/#197–201. Jeśli pojawi się kolizja, zadanie opisuje wymagany rezultat i zostaje podzielone na małe, niepowielające się PR.

## Reguły, żeby nie stracić grudnia

1. Prowadzący i Dział Nauki **do 20 listopada** potwierdzają MUST w macierzy. Bez tej decyzji pełna zgodność legacy jest ryzykiem niezarządzanym.
2. Nie zaczynać szerokich audytów, ADR, rewrite ani wymiany Django; tylko najkrótsza implementacja już istniejącymi narzędziami.
3. Nie scalać starego PR #174 ani #132 do `main` w obecnym stanie. Przenieść potrzebny fragment na aktualne `dev`.
4. Zamiast osobnych demonstratorów — jedna baza, jeden model projektu, jedna ścieżka autoryzacji i finansów.
5. Zakazać pracy na rzeczywistych danych osobowych w publicznych Issues, PR i CI. Migrować wyłącznie w upoważnionym środowisku.
6. Każdy piątek: dowód PASS/FAIL na działającym systemie, liczba otwartych blockerów, właściciel i data. **Brak PR nie musi oznaczać braku pracy, ale brak działającego rezultatu oznacza ryzyko**.
7. Świąteczny okres 21.12–06.01 nie jest normalnym sprintem; krytyczny kod ma być scalony **przed 18.12**.

## Definicja zakończenia

ZIO jest gotowe do przekazania tylko gdy istnieją: reprodukowalne instalowanie i migracje; obsługa MUST na trwałych danych; kontrola dostępu per projekt/rola; poprawność finansów; zgodny import testowy; kopie/restore; użyteczne instrukcje i protokół odbioru. **Kod w repo bez działającej demonstracji nie spełnia tej definicji.**

[Macierz legacy](22-audyt-legacy-parity.md) · [Aktualne zadania](16-propozycje-zadan-po-audycie.md) · [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1)
