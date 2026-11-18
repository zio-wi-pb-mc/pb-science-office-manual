# Co robić teraz — stan projektu i propozycje

**Cel ZIO:** do **31 stycznia 2027 r.** aplikacja ma być **wdrożona, przetestowana i odebrana przez Dział Nauki**. Zespoły mogą samodzielnie wybierać zadania; wskazane Issues są propozycjami, nie przydziałami.

**Kontrola LIVE: 18.11.2026, `dev` `e8d94872`; [CI PASS](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850).** [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1) jest źródłem przypisań; ta strona podpowiada, gdzie praca może mieć największy efekt.

## P0 — blokery działającej aplikacji

| Brak / status | Możliwe działania | Zespoły do uzgodnienia |
|---|---|---|
| **Ochrona cudzych projektów** — [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173), [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) Draft (nadal otwarty) | Przenieść mechanizm przypisań na aktualny model `dev`, chronić listę, szczegóły i URL budżetu/JSON. Test: konta A/B, własne i cudze projekty | E + F |
| **Demo `DEBUG=False`** — [#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219) | Usunąć zależność dostępności F3/F4 od `settings.DEBUG` bez ujawniania widoków anonimowym/nieuprawnionym. Test rzeczywistego obrazu, nie tylko `/health/` | F + C + E |
| **Trwałe projekty** — [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213), podzadania [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220) i [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221) | Jeden model projektu w PostgreSQL, migracje, przełączenie F3/F4, tworzenie/edycja przez operatora; bez kopiowania `SyntheticProject` do kolejnego modułu | F + D + E |
| **F01: odbiór integracji** — model, formularz, widoki i testy MERGED; Issues #197–#201 CLOSED | Przeprowadzić czysty migrate, scenariusz login → nowa fiszka → zapis → podgląd → ponowny odczyt oraz odmowę cudzej fiszki. Testy [#229](https://github.com/zio-wi-pb-mc/pb-science-office/pull/229) i [#231](https://github.com/zio-wi-pb-mc/pb-science-office/pull/231) scalone, Issues #197–#201 zamknięte; wykonać dodatkowy ręczny odbiór F01 na PostgreSQL | B + C |
| **Finanse na trwałych danych** — [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) | Plan, rezerwacja, wydatek, korekta, historia i saldo z PostgreSQL; wykorzystać istniejące testy F4, w tym [PR #218](https://github.com/zio-wi-pb-mc/pb-science-office/pull/218) | A + F |
| **Importer do docelowych modeli** — [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216), [PR #226](https://github.com/zio-wi-pb-mc/pb-science-office/pull/226) MERGED | Zachować działające walidacje/dry-run/idempotencję; podłączyć do modelu z #220, sprawdzić zgodność sum i lat | D + F |

**Nie czekamy z pracami niezależnymi na rozwiązanie wszystkich blokad.** PR ma zamykać mały, testowalny fragment. O wyborze konkretnego Issue decydują student i lider.

## P1 — po zabezpieczeniu P0 lub równolegle

- [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) — raporty i eksport CSV z rzeczywistych zapisów, bez pisania drugiego silnika obliczeń.
- [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) — automatyczny test funkcjonalny Demo, przygotowanie hostingu i harmonogram testów z Działem Nauki. [#235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235) jest Draftem, ponieważ demonstrator nie ma jeszcze rozdzielonych uprawnień między kontami. Backup/restore PostgreSQL z testem CI dodano w [#232](https://github.com/zio-wi-pb-mc/pb-science-office/pull/232); pozostaje sprawdzenie na docelowym środowisku. Dokument [PR #228](https://github.com/zio-wi-pb-mc/pb-science-office/pull/228) jest podstawą, nie końcem tych prac.
- Obsługa 403/404/500 ([PR #209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209)) i mobilne F3 ([PR #211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211)) są **MERGED** — nie zgłaszać ich ponownie jako nowych funkcji.
- [#196](https://github.com/zio-wi-pb-mc/pb-science-office/issues/196) — opcjonalny `doctor` tylko przy realnej potrzebie; dodatkowe ogólne dokumenty niżej niż test działającej aplikacji.

## Co już dostarczono — nie powielać

| Zespół | Potwierdzony przyrost w `dev` |
|---|---|
| **A** | [PR #210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [PR #218](https://github.com/zio-wi-pb-mc/pb-science-office/pull/218) — przykłady finansowe i testy konkretnych kwot; [PR #209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209) — strony błędów |
| **B** | [PR #222](https://github.com/zio-wi-pb-mc/pb-science-office/pull/222), [PR #223](https://github.com/zio-wi-pb-mc/pb-science-office/pull/223), [PR #224](https://github.com/zio-wi-pb-mc/pb-science-office/pull/224) — model F01, formularz, widoki i testy; pozostaje odbiór całości |
| **C** | [PR #207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) — konta Demo; [PR #228](https://github.com/zio-wi-pb-mc/pb-science-office/pull/228) — wymagania infrastruktury; [PR #232](https://github.com/zio-wi-pb-mc/pb-science-office/pull/232) — backup/restore PostgreSQL z testem CI |
| **D** | [PR #225](https://github.com/zio-wi-pb-mc/pb-science-office/pull/225) — plan testów legacy; [PR #226](https://github.com/zio-wi-pb-mc/pb-science-office/pull/226) — importer pamięciowy z dry-run |
| **E** | [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) nadal Draft; brak przyjętych uprawnień F3/F4 |
| **F** | [PR #211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) — mobilne F3; przygotowane #220/#221 do wdrożenia modelu/CRUD |

**Status PR (18.11):** 2 OPEN, oba Draft — #174 (E, uprawnienia) i #235 (F, Demo `DEBUG=False`). Scalono #229, #231, #234; #232 scalony wcześniej. Najważniejsza blokada to dostęp do projektów i budżetów per użytkownik. Zielony CI nie oznacza jeszcze rozwiązania P0.

[Roadmapa A–F](21-roadmap-3-tygodnie.md) · [Dashboard](19-dashboard-projektu.md) · [Bank propozycji](17-bank-zadan-mvp.md)
