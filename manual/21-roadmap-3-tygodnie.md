# Roadmap — 10–27 listopada 2026

**Stan zweryfikowany w GitHub: 10.11.2026.** Statusy zmieniają się wraz z PR-ami; ostatecznym źródłem są [GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1), [Issues](https://github.com/zio-wi-pb-mc/pb-science-office/issues) i [PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls).

Plan na najbliższe 2–3 tygodnie; **to cele do sprawdzenia, nie deklaracje ukończenia**.

## Co jest już gotowe

- [v0.1.0 — PR #90](https://github.com/zio-wi-pb-mc/pb-science-office/pull/90) znalazł się w `main` 4 listopada. `dev` jest bieżącą gałęzią integracyjną.
- [#180](https://github.com/zio-wi-pb-mc/pb-science-office/pull/180) — logowanie, [#193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193) — obraz Demo, [#188](https://github.com/zio-wi-pb-mc/pb-science-office/pull/188) — procedura staging, [#192](https://github.com/zio-wi-pb-mc/pb-science-office/pull/192) — testy F4, [#163](https://github.com/zio-wi-pb-mc/pb-science-office/pull/163) — słownik.
- **9 listopada:** [#203](https://github.com/zio-wi-pb-mc/pb-science-office/pull/203) — objaśnienia kwot; [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) — F2 → F3 → F4 i test przepływu.
- **Jeszcze NIE gotowe:** uprawnienia do własnych/cudzych projektów na wszystkich endpointach, pełne Demo `DEBUG=False` z wejściem do budżetu, formularz F01.

## Kamienie milowe

| Horyzont | Cel | Odbiór — konkretny wynik |
|---|---|---|
| **10–13.11 (P0)** | Zabezpieczyć i uruchomić cały vertical slice | Dwa konta, dwa przypisania projektów; odrzucenie cudzych list/szczegółów/JSON/budżetu; login → projekt → budżet w Demo `DEBUG=False` |
| **16–20.11 (P0/P1)** | Domknąć integrację i formularz F01 | F01: migracja, formularz, UI, zapis, odczyt, walidacje i testy; budżet spójny z projektem i rokiem; poprawki mobilne F3 |
| **23–27.11 (P1)** | Przygotować kolejne wydanie demonstracyjne | Clean clone, PostgreSQL, reset danych syntetycznych, scenariusz odbioru, zamknięte blokery; minimalny test parity legacy na przygotowanych danych |
| **Początek grudnia** | Stabilizacja i feature freeze | Priorytet dla błędów, bezpieczeństwa i użyteczności. Wydanie `dev → main` wyłącznie decyzją prowadzącego |

## Właściciele prac — co robić na najbliższych zajęciach

| Zespół | Najbliższa praca | Dalsza praca / rezultat |
|---|---|---|
| **A** | [#209](https://github.com/zio-wi-pb-mc/pb-science-office/pull/209) 403/404/500, [#210](https://github.com/zio-wi-pb-mc/pb-science-office/pull/210) poprawne rezerwy, [#204](https://github.com/zio-wi-pb-mc/pb-science-office/issues/204) przypadki finansów; [#185](https://github.com/zio-wi-pb-mc/pb-science-office/pull/185) domknąć | Faktyczny błąd lub test finansowy, nie dalszy słownik |
| **B** | [#197](https://github.com/zio-wi-pb-mc/pb-science-office/issues/197) model F01, [#198](https://github.com/zio-wi-pb-mc/pb-science-office/issues/198) Django Form, [#199](https://github.com/zio-wi-pb-mc/pb-science-office/issues/199) HTML, [#200](https://github.com/zio-wi-pb-mc/pb-science-office/issues/200) model tests, [#201](https://github.com/zio-wi-pb-mc/pb-science-office/issues/201) widoki/dostęp | Jedno działające F01 z testami na `dev`; integracja bez równoległego frameworka |
| **C** | [#207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) konta demo, usunięcie przykładowego słabego hasła; uruchomienie scenariusza w `DEBUG=False` | E2E w CI na prawdziwym obrazie Demo i PostgreSQL; `doctor` opcjonalny |
| **D** | [#132](https://github.com/zio-wi-pb-mc/pb-science-office/pull/132) nie scalać do `main`: mały nowy PR do `dev` | Jeden wykonywalny przypadek zgodności legacy z nowym kodem |
| **E** | [#174](https://github.com/zio-wi-pb-mc/pb-science-office/pull/174) aktualizacja do `dev`, wdrożenie [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173) | Serwerowe filtrowanie widoków + odmowa dla cudzych projektów i budżetów, testy |
| **F** | Przejąć wynik [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212), wpiąć E i Demo; [#211](https://github.com/zio-wi-pb-mc/pb-science-office/pull/211) usunąć konflikty | Działające, bezpieczne Demo i mobilna nawigacja, odbiór [#155](https://github.com/zio-wi-pb-mc/pb-science-office/issues/155) |

[**Aktualne szczegółowe statusy i decyzje**](16-propozycje-zadan-po-audycie.md)

## Zależności — nie blokować się bezczynnie

- **E ↔ F:** wspólny kontrakt identyfikatora i przypisania projektu; odmowy dla HTML oraz JSON/budżetu implementuje serwer.
- **C ↔ E/F:** konta + konfiguracja Demo; test realizowany na rzeczywistym `DEBUG=False`; nie „naprawiać” przez `DEBUG=True`.
- **B ↔ F:** pojedyncze F01, bez drugiej tabeli projektów; po uzgodnieniu podziału API/UI/testów.
- **A ↔ F:** finansowe przypadki referencyjne i ekrany; nie duplikować logiki budżetu.
- **D:** importer i parity można rozwijać na małym syntetycznym przykładzie bez czekania na szpitalną czy inną zewnętrzną bazę.

## Jak zakończyć zadanie

Do `DONE` trafia tylko rzeczywisty rezultat: kod/test/działający widok lub potrzebna dokumentacja, zaakceptowany PR w `dev`, aktualny Issue i możliwość zademonstrowania wyniku. **Review samo w sobie nie jest merge.** Po integracji lider pilnuje, by nie usunąć `dev` oraz by nie kierować zwykłego PR do `main`.

[GitHub Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1) · [Otwarte PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls) · [Dashboard](19-dashboard-projektu.md)
