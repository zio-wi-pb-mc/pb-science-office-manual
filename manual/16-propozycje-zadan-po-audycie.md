# Stan projektu i dalsze prace

**Stan na 22.10.2026**  
**Cel tej strony:** wskazać, gdzie projekt jest teraz i co najbardziej przybliża nas do działającego produktu.  
**Aktualny stan zadań:** GitHub Issues, Pull Requests i GitHub Project mają pierwszeństwo przed tą stroną.

!!! important "Od Discovery do produktu"
    Pierwsza faza analizy legacy dostarczyła już dużo materiału. Od tego momentu kolejne zadania powinny przede wszystkim prowadzić do **działającego kodu, testów, integracji albo usunięcia konkretnej blokady implementacyjnej**.

    Zespoły A–F są sposobem organizacji pracy, a nie sztywnymi silosami. Jeżeli ktoś kończy swój zakres Discovery, może przejść do pomocy innemu zespołowi, jeśli to bardziej przybliża wspólne MVP.

## Gdzie jest źródło prawdy

1. **`dev` — bieżący zintegrowany stan projektu.** Zwykłe branche tworzymy od `dev`, a zwykłe PR-y kierujemy do `dev`.
2. **Otwarte PR-y — praca jeszcze niezintegrowana.** Przed rozpoczęciem zadania trzeba sprawdzić, czy ktoś już nie robi tego samego.
3. **`main` — ostatnie stabilne wydanie.** Nie musi zawierać każdej najnowszej zmiany z `dev`.
4. **GitHub Pages — instrukcja i kierunek pracy.** Nie zastępuje aktualnych Issues i PR-ów.

Do `main` trafia okresowo sprawdzony stan `dev` przez Release PR. Finalny merge Release PR wykonuje prowadzący.

## Najbliższy checkpoint

Najbliższa kolejność prac technicznych:

1. domknąć [#157 — weryfikacja i integracja skeletonu](https://github.com/zio-wi-pb-mc/pb-science-office/pull/157),
2. scalić #157 do `dev`,
3. powtórzyć clean-clone test i CI,
4. zweryfikować [#90 — release `dev → main`](https://github.com/zio-wi-pb-mc/pb-science-office/pull/90),
5. wydać pierwszy stabilny checkpoint do `main`.

Dzięki temu `main` będzie stabilnym wydaniem, a nie miejscem bieżącej integracji.

## Najbliższy cel produktu

Najważniejszy wspólny rezultat:

`mock login → lista projektów → szczegóły projektu → budżet`

Ma działać w jednej aplikacji:
- po czystym klonie,
- na danych syntetycznych,
- z testami,
- bez ręcznego poprawiania konfiguracji.

Dopiero potem dokładamy pierwszy mały formularz lub proces.

## Co zmieniło się od poprzedniej aktualizacji

Od 15.10 scalono kolejne wyniki Discovery, m.in. analizę finansową, formularze i procesy legacy. Zespół B dostarczył m.in. PR #110, #152 i #154. Powstały też prace dotyczące typów projektów (#142, #150), przypadków finansowych (#136), testów zgodności (#132) oraz stabilizacji środowiska (#157).

Jednocześnie nadal otwartych jest wiele PR-ów z analizą i dokumentacją. Dlatego priorytetem nie jest już tworzenie kolejnych podobnych dokumentów, tylko wykorzystanie istniejących wyników w kodzie i testach.

# Jak rozkładamy teraz pracę

Poniższe punkty są **propozycjami organizacji pracy**, a nie nowymi wymaganiami biznesowymi. Przed rozpoczęciem należy sprawdzić aktualny `dev`, Issues i PR-y. Jeżeli coś zostało już wykonane, nie robimy tego drugi raz.

## A — system legacy i reguły biznesowe

A ma już dużo wiedzy o finansach i danych legacy.

### Bieżące
- #99 — rezerwacja a wydatek,
- #136 — przypadki związane z rezerwą,
- #142 — typy prac,
- #150 — przykładowe dane typów prac.

### Propozycja dalszej pracy

Zamiast kolejnego szerokiego audytu:

- przekładać potwierdzone reguły na małe dane referencyjne używane w testach F3/F4,
- przygotowywać syntetyczne przypadki `wejście → oczekiwany wynik`,
- pomagać F3/F4 sprawdzać znaczenie pól i wyniki finansowe.

Jeżeli osoba z A nie ma aktywnego zadania blokującego, może wejść w przygotowanie fixtures lub testów F3/F4.

**Pożądany rezultat:** wiedza A trafia do automatycznego testu albo działającego widoku.

## B — wymagania i kryteria akceptacji

B wykonało już dużą część Discovery. Dostarczono m.in. katalog raportów i kolejne doprecyzowania procesów.

### Bieżące
- #111 — scenariusze legacy do poprawy,
- #148 — należy uporządkować; jeżeli nadal względem `dev` wnosi tylko whitespace, nie powinien być scalany.

### Propozycja B-1 — wsparcie F3 testami

**Odbiorca:** F3 (#112).  
**Rezultat:** wykonywalne testy listy i szczegółów projektu.

Przykładowy zakres:
- grant, praca statutowa i własna na danych syntetycznych,
- dwa projekty mogą mieć ten sam numer i rok, ale różny typ,
- kliknięcie projektu otwiera właściwe szczegóły,
- pusta lista i brak projektu są obsłużone.

Nie chodzi o kolejny dokument z testami, tylko o testy uruchamiane przez pytest/CI.

### Propozycja B-2 — wsparcie F2 po minimum z E

**Odbiorca:** F2 (#113).  
**Rezultat:** wykonywalne testy logowania/uprawnień, w tym przynajmniej jeden przypadek odmowy.

### Propozycja B-3 — review zgodności implementacji

Osoby B mogą wykonywać review F2/F3/F4 pod kątem zgodności z ustalonym procesem zamiast otwierać kolejne katalogi.

**Pożądany rezultat:** kolejna praca B jest widoczna w działającej aplikacji lub CI, nie tylko w Markdown.

## C — środowisko techniczne i integracja

### Bieżące

Najważniejsze są:
- #157 — stabilne uruchomienie od czystego klona,
- #90 — pierwszy release `dev → main`.

### Propozycja dalszej pracy

Po pierwszym release C:
- utrzymuje CI, Docker i testy,
- usuwa problemy techniczne blokujące kilka zespołów,
- pomaga integrować F2/F3/F4,
- nie tworzy drugiego skeletonu ani nowego fundamentu aplikacji.

Jeżeli C ma wolną osobę, bardziej wartościowa jest pomoc przy integracji F niż kolejny ADR.

## D — dane i migracja

Mapa starej bazy jest już dostępna. Kolejna mapa całej bazy nie jest teraz priorytetem.

### Bieżące
- #132 / #124 — plan testów zgodności wymaga domknięcia.

### Propozycja D-1 — dane syntetyczne i fixtures dla F3

**Odbiorca:** F3 (#112).  
**Rezultat:** dane testowe zgodne z potwierdzonym znaczeniem pól oraz testy ich wykorzystania.

### Propozycja D-2 — minimalny importer po ustabilizowaniu F3

Po ustaleniu modelu projektu w F3:

- mały plik syntetyczny imitujący dane legacy,
- import np. grant/statut/własne do nowego modelu,
- test poprawnego importu,
- test błędnego rekordu,
- jawne zachowanie przy ponownym uruchomieniu.

To jest prototyp migracji dla MVP, **nie migracja całej produkcyjnej bazy**.

### Propozycja D-3 — plan testów ma prowadzić do testów

Po poprawieniu #132 wybrane przypadki z planu powinny zostać zamienione na testy wykonywalne. Dokument nie powinien być końcem zadania.

## E — role, uprawnienia i przepływ pracy

### Bieżące
- #117 — statusy i przejścia,
- #123 — role i uprawnienia.

Oba PR-y trzeba najpierw poprawić i domknąć.

### Propozycja E-1 — minimalny kontrakt dla F2/F3

Nie trzeba od razu rozstrzygać pełnego systemu uprawnień.

**Rezultat:**
- minimalne role potrzebne F2/F3,
- kilka dozwolonych i zabronionych działań,
- przynajmniej jeden test pozytywny i jeden negatywny.

### Propozycja E-2 — później mały mechanizm statusów

Po zatwierdzeniu modelu statusów można zaimplementować walidację dozwolonych i zabronionych przejść bez budowania całego workflow i UI.

Jeżeli E ma wolną osobę po domknięciu dokumentów, może ona bezpośrednio pomóc F2 w kodzie/testach.

## F — pierwszy spójny fragment systemu

F pozostaje właścicielem pierwszego działającego fragmentu.

### Bieżące
- #113 — użytkownik/rola i mock logowania,
- #112 — lista i szczegóły projektu,
- #91 / PR #93 — budżet,
- #155 — integracja F3–F4,
- #156 / PR #157 — stabilne środowisko.

### Propozycja kolejności

1. po #157 rozwijać F2 i F3 na aktualnym `dev`,
2. F4 integrować z F3, a nie utrzymywać jako osobne demo,
3. wykorzystać pomoc A/B/D/E do fixtures, testów i weryfikacji,
4. doprowadzić cały fragment do jednego demonstratora.

**Kryterium wspólnego sukcesu:**  
`mock login → lista → szczegóły → budżet` działa i przechodzi testy od czystego klona.

# Gdzie kierować wolne osoby

Jeżeli ktoś nie ma aktywnego zadania, w pierwszej kolejności powinien szukać pracy tutaj:

1. **F3 (#112)** — lista + szczegóły + wspólny model z F4,
2. **F2 (#113)** — logowanie/role,
3. **#155** — integracja szczegółów z budżetem,
4. **testy automatyczne** dla F2/F3/F4,
5. **#157/#90** do momentu pierwszego stabilnego release.

Nie ma potrzeby zachowywać równej liczby zadań w A–F. Ważniejsze jest dowiezienie wspólnego produktu.

## Kiedy tworzyć nowe Issue

Nowe Issue powinno mieć:

```text
Cel:
Odbiorca / zależność:
Co konkretnie powstanie:
Jak to sprawdzimy:
Źródło / podstawa:
Poza zakresem:
```

Jeżeli rezultatem ma być dokument, trzeba dodatkowo wskazać, **jaki kod, test lub decyzja implementacyjna są obecnie przez jego brak zablokowane**.

## Przekazanie między zespołami

Raz w tygodniu:

```text
### Przekazanie
- Co rzeczywiście powstało:
- Kto może teraz tego użyć:
- Co blokuje produkt:
- Proponowany następny krok:
```

Ostatni punkt jest tylko propozycją, dopóki nie zostanie uzgodniony jako konkretne Issue.

## Kamienie milowe

| Termin | Oczekiwany stan produktu |
|---|---|
| koniec października | #157 domknięte, pierwszy stabilny release w `main`, F2/F3/F4 rozwijane na wspólnej bazie |
| połowa listopada | działa `mock login → lista → szczegóły → budżet` |
| koniec listopada | podstawowe uprawnienia i pierwszy mały formularz/proces zintegrowane z testami |
| początek grudnia | zamrożenie zakresu MVP; dalej stabilizacja, testy, UX i dokumentacja |

## Ograniczenia

Materiały legacy pozostają materiałami dydaktycznymi o ograniczonym dostępie. W publicznych Issues/PR wolno publikować wnioski, nazwy plików/funkcji/tabel i dane syntetyczne, ale nie dane osobowe, sekrety ani dump bazy.

## Historia aktualizacji

- **22.10.2026** — przesunięto nacisk z kolejnego Discovery na implementację, testy i integrację; wyjaśniono rolę `dev` i `main`; dopuszczono elastyczne przesuwanie osób między A–F i dodano konkretne propozycje wsparcia produktu.
- **15.10.2026** — doprecyzowano dalszą pracę A–F po pierwszym audycie.
- **14.10.2026** — utworzono podsumowanie stanu A–F.
