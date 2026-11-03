# Roadmap ZIO — plan na 3 tygodnie

**Okres: 4–20 listopada 2026.** Stan GitHub sprawdzony 03.11.2026.

!!! important "Plan, nie automatyczny przydział"
    Ta strona pokazuje studentom **co robić teraz, w kolejnym tygodniu i za 2–3 tygodnie**. Przed rozpoczęciem zadania sprawdź [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1), [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues) i [PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls). Nie twórz duplikatów. W GitHub Project są rzeczywiste przypisania i statusy.

**Główny cel MVP:** `logowanie → lista projektów → szczegóły projektu → budżet`, w jednej aplikacji Django, na syntetycznych danych, z PostgreSQL, testami, Dockerem i kontrolą dostępu. Następnie pierwszy niewielki formularz/proces.

## 1. Roadmap produktu — kamienie milowe

| Kiedy | Cel | Jak sprawdzimy, że działa |
|---|---|---|
| **Tydzień 1, 4–6.11** | Domknąć gotowe PR i zależności | Review/test/merge do `dev` dla [F2 #180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180), [testów #192](https://github.com/zio-wi-pb-mc/pb-science-office/pull/192), [Demo #193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193), zgodnie z warunkami każdego PR |
| **Tydzień 2, 9–13.11** | Jeden działający przepływ użytkownika | Login → lista → szczegóły → budżet tego samego projektu i roku, własne/cudze projekty, przypadki negatywne, testy integracyjne |
| **Tydzień 3, 16–20.11** | Powtarzalne Demo + pierwszy formularz | Czysty start Demo z `DEBUG=False`, syntetyczne dane i E2E; przynajmniej działający przekrojowy fragment pierwszego formularza Django z walidacją i testami |

**Dalszy horyzont:** do końca listopada domknięcie formularza i podstawowego workflow; początek grudnia — feature freeze, stabilizacja. Są to cele planistyczne, nie gwarantowane terminy.

## 2. Strumienie / podprojekty

| Podprojekt | Funkcjonalny rezultat | Zależności |
|---|---|---|
| **Projekty i finanse** | Lista, szczegóły i budżet wybranego projektu | [F3 #112](https://github.com/zio-wi-pb-mc/pb-science-office/issues/112), [integracja F3–F4 #155](https://github.com/zio-wi-pb-mc/pb-science-office/issues/155) |
| **Logowanie i kontrola dostępu** | Testowy login, role, dostęp do własnych projektów; odmowa dla cudzych | [PR #180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180), [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173), [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) |
| **Demo / platforma** | Powtarzalny obraz, migracje, health, dane demo i smoke tests | [#190](https://github.com/zio-wi-pb-mc/pb-science-office/issues/190), [PR #193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193), [staging #187](https://github.com/zio-wi-pb-mc/pb-science-office/issues/187) |
| **Pierwszy formularz** | Pola, backend Django, UI, walidacje i testy w istniejącej aplikacji | Wybrać mały proces z potwierdzonych wymagań B; uzgodnić z F i E |
| **Legacy / migracja** | Mały importer, mapowanie danych i wykonywalny przypadek parity | [#124](https://github.com/zio-wi-pb-mc/pb-science-office/issues/124), [PR #132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132) |
| **Testy / UX** | Testy rzeczywistego przepływu, przypadki 403/404/empty, poprawki UX | Integracja F2/F3/F4; bez powielania istniejących testów |

## 3. Co może robić Twój zespół

| Zespół | **Teraz (4–6.11)** | **Dalej (9–20.11)** | Odbiór |
|---|---|---|---|
| **A — finanse/legacy** | Peer review i ewentualna poprawka [#192](https://github.com/zio-wi-pb-mc/pb-science-office/pull/192); dopracować [słownik #163](https://github.com/zio-wi-pb-mc/pb-science-office/pull/163) zgodnie z review | Wspólne fixtures F3/F4, testy zer, braków, rezerwacji, rozliczeń, projektów o podobnych identyfikatorach | Działające testy, reguły potwierdzone źródłem |
| **B — formularze/UX** | UX na istniejących widokach; wybór **jednego małego formularza** i podział na konkretne Issue | Backend Django, HTML, walidacje i testy formularza; pełne E2E po integracji F2 | Działający kod i testy zamiast wyłącznie Markdown |
| **C — platforma** | Test od czystego klona [Demo #193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193), peer review, integracja; uzgodnienie [staging #188](https://github.com/zio-wi-pb-mc/pb-science-office/pull/188) | Seed syntetycznych użytkowników i projektów, test Demo z `DEBUG=False`, wsparcie integracji i [release #90](https://github.com/zio-wi-pb-mc/pb-science-office/pull/90) | Obraz + PostgreSQL + dostępna aplikacja + smoke |
| **D — importer/migracja** | Poprawić [plan zgodności #132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132); wybrać jeden wykonalny przypadek | Minimalny importer syntetycznego przykładu, walidacja identyfikatorów i test parity | Uruchamialny importer i test |
| **E — uprawnienia** | Zaktualizować Draft [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) względem bieżącego `dev` i F2, ustalić [scenariusze #181](https://github.com/zio-wi-pb-mc/pb-science-office/issues/181) | Integracja dostępu na liście, szczegółach i JSON; testy odmowy i minimalny status formularza | Użytkownik nie widzi cudzych projektów również po zmianie URL |
| **F — funkcje MVP** | Integracja [F2 #180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180) z F3/F4, [#155](https://github.com/zio-wi-pb-mc/pb-science-office/issues/155), wsparcie kontroli dostępu | Nawigacja, stany błędów, E2E login → budżet, integracja formularza grupy B | Jeden demonstracyjny przepływ w jednej aplikacji |

**To kierunki do wyboru i uzgodnienia, nie nowe Issues.** Lead sprawdza bieżące zadania każdej osoby. Jeden student ma maksymalnie jedno główne Issue `IN PROGRESS`.

## 4. Na co uważać — już zajęte i zależne

- **#157 jest scalone** — nie ponawiaj budowy skeletonu i clean clone.
- **PR #180, #192 i #193 mają APPROVE prowadzącego**, ale w chwili aktualizacji **nie były scalone do `dev`**. Samo Approve nie kończy zadania.
- **PR #174 to Draft**, wymagający dostosowania do nowszego F3 i integracji F2.
- **B-TEST-01–04 w Banku zadań to pomysły, a nie wolne przydziały.** Część testów już istnieje. B nie powiela zakresu F.
- **Ważna integracja:** na `dev` widoki F3 są ograniczone przy `DEBUG=False`, natomiast Demo #193 używa `DEBUG=False`. Trzeba zapewnić prawidłowy dostęp z użyciem auth/uprawnień, nie włączać debugowania.

## 5. Jak zacząć konkretne zadanie

1. Otwórz [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1): sprawdź, co masz już w `IN PROGRESS`, `REVIEW`, `TEST` lub `BLOCKED`.
2. Sprawdź [otwarte PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls): może bardziej przyda się peer review, test albo usunięcie konkretnego blockera.
3. Jeśli nie masz pracy, wybierz z tabeli **najmniejszy sensowny brak** i sprawdź duplikaty.
4. Ustal Issue z jednym właścicielem: cel, zakres, zależności, kryteria odbioru, sposób testowania.
5. Branch od `dev` → PR do `dev` → CI → merytoryczne peer review → merge zgodnie z regułami projektu.

## 6. Co pokazać po zajęciach

**Środa PS2 (D/E/F):** konkretny postęp w integracji, uprawnieniach, importerze i funkcjach.  
**Czwartek PS1 (A/B/C):** wyniki testów/fixtures, decyzja o formularzu, Demo i integracja.

Każda osoba wskazuje: **Issue, rezultat (kod/test/PR), kolejny krok, ewentualny blocker**. Nie potrzeba prezentacji PPT.

[**Co robić teraz**](16-propozycje-zadan-po-audycie.md) · [**Bank zadań MVP**](17-bank-zadan-mvp.md) · [**Dashboard**](19-dashboard-projektu.md)

*Statusy i kolejność zależą od bieżącego GitHuba. Ten harmonogram jest planem na 03.11.2026 i powinien być aktualizowany po merge i zmianach priorytetów.*
