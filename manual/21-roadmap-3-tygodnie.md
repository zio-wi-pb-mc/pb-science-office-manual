# Roadmap zespołów A–F — 18 listopada 2026

**Cel ZIO:** do **31 stycznia 2027 r.** aplikacja ma być **wdrożona, przetestowana i odebrana przez Dział Nauki**. Zespoły mogą samodzielnie wybierać zadania; wskazane Issues są propozycjami, nie przydziałami.

To **propozycje kierunków** oparte na bieżącym kodzie. Liderzy i studenci samodzielnie ustalają kolejność oraz podział pracy. Dla dat wdrożenia i odbioru zobacz [plan końcowy](23-plan-do-31-stycznia.md).

## Najbliższe zajęcia: 18–20 listopada

| Zespół | Co już się ruszyło | Najbardziej przydatny następny rezultat |
|---|---|---|
| **A — finanse** | Przypadki rezerwy i testy F2/F3/F4: [PR #210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [PR #218](https://github.com/zio-wi-pb-mc/pb-science-office/pull/218) | Uzgodniony kontrakt trwałych zapisów z F; pierwszy test plan → rezerwacja → wydatek po restarcie |
| **B — formularze** | F01 z modelem, formularzem, widokami i testami (#222–#224, #229, #231); #197–#201 zamknięte | Próba ręczna na PostgreSQL przez osobę spoza B; następnie wspieranie uzgodnionych braków produktu |
| **C — platforma** | Seed Demo #207, wymagania #228, backup/restore #232 i doctor #234 — w `dev` | Funkcjonalny test dwóch kont `DEBUG=False` z F/E, ręczny odbiór backup/restore i doctor przez niezależną osobę |
| **D — migracja** | Plan testów [PR #225](https://github.com/zio-wi-pb-mc/pb-science-office/pull/225) i importer pamięciowy [PR #226](https://github.com/zio-wi-pb-mc/pb-science-office/pull/226) | Adapter do docelowego modelu F, test uzgodnienia danych i idempotencji |
| **E — uprawnienia** | Stary Draft [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) (bez merge) | Mały nowy PR do `dev` ze wspólną kontrolą per projekt; lista filtrowana, cudze HTML/JSON/budżety → 404 |
| **F — integracja** | Mobilne F3 [PR #211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211), rozpisane [#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219), [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220), [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221) | Integracja #235 z kontrolą E; niezależnie #220 (model PostgreSQL), potem #221 (CRUD) |

## Kamienie milowe projektu

| Do kiedy | Wynik do sprawdzenia |
|---|---|
| **20.11** | Krótki checkpoint liderów: kontrakt projektu, podział małych fragmentów i blokery; bez wymagania kompletnego Demo |
| **24–27.11** | Pierwsze małe PR-y/testy oraz próba integracji E/F/C na dwóch kontach; odrębnie postęp modelu PostgreSQL |
| **01–04.12** | Ocena bezpiecznego Demo, pierwszy pokaz Działowi Nauki działającego zakresu i zebranie uwag; 03.12 ocena dwutygodniowej współpracy |
| **04.12** | Trwałe projekty, migracje i odczyt F3/F4 ([#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220)) |
| **11.12** | Tworzenie/edycja projektów ([#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221)) i odebrany przepływ F01 |
| **18.12** | Podstawowe trwałe operacje finansowe i testy bilansów ([#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214)) |
| **08.01** | Raporty, eksport i import próbny ([#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215), [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216)) |
| **10.01** | Zakończenie dodawania nowych funkcji |
| **15.01** | Wdrożenie w uzgodnionym środowisku |
| **16–25.01** | Testy z Działem Nauki i usuwanie błędów |
| **26–30.01** | Retesty, backup/restore, protokół odbioru |
| **31.01** | **Aplikacja wdrożona, przetestowana i odebrana** |

## Jak raportować pracę

Pokaż **działający ekran, migrację, test lub wynik importu**, a nie sam opis postępu. Przy każdym zadaniu: link do PR/Issue, krótki scenariusz uruchomienia, wynik PASS/FAIL i ewentualny blocker. PR studenckie trafiają do `dev`, wydania `dev → main` wykonuje prowadzący.

[Bank propozycji](17-bank-zadan-mvp.md) · [Dashboard](19-dashboard-projektu.md) · [Audyt legacy](22-audyt-legacy-parity.md)
