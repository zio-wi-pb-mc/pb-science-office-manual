# Co robić teraz — stan projektu i propozycje

**Cel ZIO:** do **31 stycznia 2027 r.** aplikacja ma być **wdrożona, przetestowana i odebrana przez Dział Nauki**. Każdy zespół może wybierać własne zadania lub wspierać inne zespoły; roadmapa pokazuje najbardziej potrzebne kierunki pracy.

**Kontrola LIVE: 18.11.2026, `dev` `e8d94872`; [CI PASS](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850).** [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1) jest źródłem przypisań; ta strona podpowiada, gdzie praca może mieć największy efekt.

## Podział wspólnej pracy — propozycja do uzgodnienia przez liderów

Zespoły A–F pozostają bez zmian organizacyjnych. Gdy własny fragment jest gotowy albo zablokowany, można przejąć **mały, testowalny fragment** z innego obszaru. Uzgodnijcie przed rozpoczęciem, kto jest autorem PR, kto integruje i co stanowi odbiór; pracujcie od aktualnego `dev`. Bez duplikowania modeli i bez równoległych zmian tych samych plików.

| Wspólny obszar | Proponowany podział | Rezultat |
|---|---|---|
| [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220) — model projektów | D: pomoc przy modelu, migracjach i testach; F: kontrakt i podłączenie F3/F4; E: wymagania uprawnień | Jeden model w PostgreSQL, odczyt po ponownym uruchomieniu |
| [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221) — CRUD | B: formularze, walidacja i testy; F: integracja; E: prawa zapisu | Tworzenie i edycja projektu przez operatora |
| [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) / [#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219) — dostęp i Demo | E: przypisania i serwerowa kontrola; F: budżet HTML/JSON; C: test 2 kont w `DEBUG=False` | Brak odczytu cudzych projektów, spójna polityka odpowiedzi |
| [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) — finanse | A: modele operacji, transakcje i testy; F/D: uzgodnienie klucza projektu | Pierwszy trwały scenariusz plan → wydatek/rezerwacja → saldo |
| [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) — importer | D: przygotowanie mapowania, testów i raportu; F: docelowy ORM | Import po ustaleniu modelu, bez kolejnego pamięciowego demonstratora |

**Najpierw kontrakt**: typ/rok/identyfikator projektu, relacje do finansów i przypisań. Jeśli inne zespoły mogą już wykonać niezależne testy lub fragment UI, nie powinny czekać na zakończenie całego #220. Zgłaszajcie na GitHubie konkretny blocker, osobę odpowiedzialną i potrzebną decyzję.

## P0 — blokery działającej aplikacji

| Brak / status | Możliwe działania | Zespoły do uzgodnienia |
|---|---|---|
| **Ochrona cudzych projektów** — [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173), [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) Draft (nadal otwarty) | Przenieść mechanizm przypisań na aktualny model `dev`, chronić listę, szczegóły i URL budżetu/JSON. Test: konta A/B, własne i cudze projekty | E + F |
| **Demo `DEBUG=False`** — [#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219) | Usunąć zależność dostępności F3/F4 od `settings.DEBUG` bez ujawniania widoków anonimowym/nieuprawnionym. Test rzeczywistego obrazu, nie tylko `/health/` | F + C + E |
| **Trwałe projekty** — [#213](https://github.com/zio-wi-pb-mc/pb-science-office/issues/213), podzadania [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220) i [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221) | Jeden model projektu w PostgreSQL, migracje, przełączenie F3/F4, tworzenie/edycja przez operatora; bez kopiowania `SyntheticProject` do kolejnego modułu | F + D + E |
| **F01: odbiór integracji** — model, formularz, widoki i testy MERGED; Issues #197–#201 CLOSED | Przeprowadzić czysty migrate, scenariusz login → nowa fiszka → zapis → podgląd → ponowny odczyt oraz odmowę cudzej fiszki. Testy [#229](https://github.com/zio-wi-pb-mc/pb-science-office/pull/229) i [#231](https://github.com/zio-wi-pb-mc/pb-science-office/pull/231) scalone, Issues #197–#201 zamknięte; wykonać dodatkowy ręczny odbiór F01 na PostgreSQL | B + C |
| **Finanse na trwałych danych** — [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) | Plan, rezerwacja, wydatek, korekta, historia i saldo z PostgreSQL; wykorzystać istniejące testy F4, w tym [PR #218](https://github.com/zio-wi-pb-mc/pb-science-office/pull/218) | A + F |
| **Importer do docelowych modeli** — [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216), [PR #226](https://github.com/zio-wi-pb-mc/pb-science-office/pull/226) MERGED | Zachować działające walidacje/dry-run/idempotencję; podłączyć do modelu z #220, sprawdzić zgodność sum i lat | D + F |

**Pracujcie równolegle nad niezależnymi fragmentami.** Każdy PR powinien dostarczać mały, testowalny rezultat. Temat wybierają studenci w porozumieniu z liderem.

## P1 — po zabezpieczeniu P0 lub równolegle

- [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) — raporty i eksport CSV z rzeczywistych zapisów, bez pisania drugiego silnika obliczeń.
- [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) — automatyczny test funkcjonalny Demo, przygotowanie hostingu i harmonogram testów z Działem Nauki. [#235](https://github.com/zio-wi-pb-mc/pb-science-office/pull/235) jest Draftem, ponieważ demonstrator nie ma jeszcze rozdzielonych uprawnień między kontami. Backup/restore PostgreSQL z testem CI dodano w [#232](https://github.com/zio-wi-pb-mc/pb-science-office/pull/232); pozostaje sprawdzenie na docelowym środowisku. Dokument [PR #228](https://github.com/zio-wi-pb-mc/pb-science-office/pull/228) jest podstawą, nie końcem tych prac.
- Obsługa 403/404/500 ([PR #209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209)) i mobilne F3 ([PR #211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211)) są **MERGED** — nie zgłaszać ich ponownie jako nowych funkcji.
- [#196](https://github.com/zio-wi-pb-mc/pb-science-office/issues/196) — `doctor.py` jest już w `dev` po [PR #234](https://github.com/zio-wi-pb-mc/pb-science-office/pull/234); pozostaje praktyczny odbiór przez osobę spoza zespołu C. Nie pisać drugiego narzędzia diagnostycznego.

## Co już dostarczono — nie powielać

| Zespół | Potwierdzony przyrost w `dev` |
|---|---|
| **A** | [PR #210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210), [PR #218](https://github.com/zio-wi-pb-mc/pb-science-office/pull/218) — przykłady finansowe i testy konkretnych kwot; [PR #209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209) — strony błędów |
| **B** | [#222](https://github.com/zio-wi-pb-mc/pb-science-office/pull/222), [#223](https://github.com/zio-wi-pb-mc/pb-science-office/pull/223), [#224](https://github.com/zio-wi-pb-mc/pb-science-office/pull/224), [#229](https://github.com/zio-wi-pb-mc/pb-science-office/pull/229), [#231](https://github.com/zio-wi-pb-mc/pb-science-office/pull/231) — model, formularz, widoki i testy F01; pozostaje odbiór całości |
| **C** | [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) — konta Demo; [#228](https://github.com/zio-wi-pb-mc/pb-science-office/pull/228) — wymagania; [#232](https://github.com/zio-wi-pb-mc/pb-science-office/pull/232) — backup/restore; [#234](https://github.com/zio-wi-pb-mc/pb-science-office/pull/234) — diagnostyka |
| **D** | [PR #225](https://github.com/zio-wi-pb-mc/pb-science-office/pull/225) — plan testów legacy; [PR #226](https://github.com/zio-wi-pb-mc/pb-science-office/pull/226) — importer pamięciowy z dry-run |
| **E** | [PR #174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) nadal Draft; brak przyjętych uprawnień F3/F4 |
| **F** | [PR #211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) — mobilne F3; przygotowane #220/#221 do wdrożenia modelu/CRUD |

**Status PR (18.11):** 2 OPEN, oba Draft — #174 (E, uprawnienia) i #235 (F, Demo `DEBUG=False`). Scalono #229, #231, #234; #232 scalony wcześniej. Najważniejsza blokada to dostęp do projektów i budżetów per użytkownik. Zielony CI nie oznacza jeszcze rozwiązania P0.

[Roadmapa A–F](21-roadmap-3-tygodnie.md) · [Dashboard](19-dashboard-projektu.md) · [Bank propozycji](17-bank-zadan-mvp.md)
