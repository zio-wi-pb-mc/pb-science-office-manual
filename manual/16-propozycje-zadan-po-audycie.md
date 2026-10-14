# Stan projektu i kierunki dalszych prac

**Stan na: 14.10.2026**
**Charakter dokumentu:** żywe podsumowanie komunikacyjne; aktualizowane w miarę postępu PR.
**Źródło prawdy:** GitHub Issues, Pull Requests i GitHub Project.

!!! important "To nie jest lista przydziałów"
    Ta strona nie mówi, kto ma wykonać następne zadanie. Pokazuje, **co już istnieje, co jest w toku, od czego zależą inne zespoły i gdzie są luki**. Student lub zespół proponuje następne Issue samodzielnie, a lead/prowadzący sprawdzają zakres, duplikaty i zależności.

## Jak korzystać z tej strony

Przed rozpoczęciem nowego zadania:

1. sprawdź aktualne Issue/PR swojego zespołu,
2. sprawdź, czy wynik innego zespołu nie rozwiązuje już problemu,
3. ustal, kto potrzebuje rezultatu Twojej pracy,
4. zaproponuj konkretne Issue z jednym właścicielem i mierzalnym rezultatem,
5. jeżeli czegoś nie wiadomo — zapisz `UNKNOWN`/blocker zamiast tworzyć własną regułę biznesową.

Prowadzący nie musi zatwierdzać każdego drobnego kroku. Szczególnego uzgodnienia wymagają przede wszystkim zadania przekrojowe, decyzje architektoniczne, migracja, bezpieczeństwo oraz zadania rozmiaru L.

## Cel czasowy

Celem jest, aby **na początku grudnia istniało działające, zintegrowane MVP**, a nie zbiór niezależnych analiz.

Orientacyjne kamienie milowe:

| Termin | Oczekiwany stan produktu |
|---|---|
| koniec października | najważniejsze luki Discovery zamknięte; dane, finanse, role i workflow nie blokują implementacji |
| połowa listopada | pierwszy spójny przepływ MVP działa end-to-end na danych testowych |
| koniec listopada | podstawowe uprawnienia, formularze/dokumenty i testy krytycznych przepływów są zintegrowane |
| początek grudnia | feature freeze MVP; poprawiamy błędy, integrację, testy, UX i dokumentację |

## Szybki obraz A–F

| Zespół | Stan | Najważniejsze aktywne wyniki | Najważniejsze zależności |
|---|---|---|---|
| **A** | analiza legacy/finansów w toku | typy prac #85; saldo i koszty pośrednie #97 / PR #121; rezerwacja vs wydatek #81 / PR #99 | F4 potrzebuje potwierdzonych reguł finansowych; D korzysta ze znaczenia pól |
| **B** | kilka analiz w review | proces legacy #79 / PR #105; procesy poza legacy #80 / PR #104; katalog outputów #82 / PR #110; mapa pól #83 / PR #103; scenariusze #84 / PR #111 | E potrzebuje potwierdzonych procesów; F potrzebuje pól i scenariuszy |
| **C** | wspólny Core jest już na `dev` | Django/PostgreSQL/Docker, pytest, ADR-y, dokumentacja i CI | nie tworzyć kolejnego skeletonu; wspierać integrację F i wspólne decyzje techniczne |
| **D** | mapa bazy w review | #114 / PR #115 — tabele, pola, relacje logiczne i triggery | kolejne kroki powinny wynikać z luk D2: identyfikatory, lata/kontynuacje, jakość danych, migracja |
| **E** | role i workflow w toku | #120 — role/uprawnienia; #116 / PR #117 — statusy i przejścia | F2 potrzebuje ról; kolejne workflow powinny korzystać z wyników B i legacy |
| **F** | implementacja vertical slice w toku | #113 — użytkownik/logowanie; #112 — lista i szczegóły; #91 / draft PR #93 — budżet | F3/F4 muszą współdzielić model projektu; F4 zależy od A/D; F2 od E |

Numery powyżej opisują **stan na dzień aktualizacji**. Jeżeli PR został później scalony albo Issue zamknięte, GitHub ma pierwszeństwo przed tym dokumentem.

## A — obecny system, dane i finanse

### Co jest teraz ważne

- typy prac i ich różnice są analizowane w #85,
- reguły salda i kosztów pośrednich zostały szczegółowo odtworzone w #97 / PR #121,
- cykl rezerwacji i wydatku jest analizowany w #81 / PR #99,
- mapa uczestników projektu (#87) została już wykonana.

### Co powinny dostać inne zespoły

- jednoznaczne znaczenie pól finansowych,
- potwierdzony sposób liczenia salda,
- zachowanie rezerwacji i częściowego rozliczenia,
- jawnie opisane rozbieżności legacy.

**Pytanie kierujące:** jaki brak w wiedzy o legacy realnie blokuje teraz D albo F?

## B — procesy, formularze i wymagania

### Co jest teraz ważne

B ma już kilka równoległych rezultatów dotyczących procesów, pól formularzy, raportów i scenariuszy. Priorytetem nie jest tworzenie kolejnych katalogów, tylko **domknięcie jakości i powiązanie wyników z kodem legacy**.

### Co powinny dostać inne zespoły

- potwierdzony proces pracy własnej,
- pola i walidacje używane przez formularze,
- komplet najważniejszych raportów/eksportów,
- scenariusze akceptacyjne, które E i F mogą wykorzystać bez zgadywania.

**Pytanie kierujące:** który brak w procesie lub formularzu uniemożliwia teraz zaprojektowanie workflow albo implementację vertical slice?

## C — Core, testy i decyzje techniczne

Podstawowy Core istnieje już na `dev`. Dalsza praca C powinna coraz częściej polegać na **wspieraniu integracji**, a nie na tworzeniu kolejnych niezależnych fundamentów.

### Kierunek

- utrzymywać jeden sposób uruchamiania i testowania,
- domykać decyzje architektoniczne wtedy, gdy są potrzebne implementacji,
- dostarczać wspólne mechanizmy używane przez F,
- pilnować CI i jakości technicznej PR-ów implementacyjnych.

**Pytanie kierujące:** jaka wspólna decyzja lub infrastruktura blokuje obecnie więcej niż jeden zespół?

## D — baza, identyfikatory i migracja

#114 / PR #115 daje pierwszą szczegółową mapę starej bazy. Nie należy tworzyć drugiej konkurencyjnej mapy tabel.

### Luki, z których mogą wynikać następne Issue

- historyczne identyfikatory i ich stabilność,
- lata oraz kontynuacje prac,
- osierocone i niespójne relacje,
- kontrola jakości danych przed migracją,
- mapowanie legacy → nowy model tylko dla zakresu potrzebnego MVP.

To są **kierunki**, nie gotowy przydział. Najpierw należy sprawdzić, który z nich blokuje F lub przyszłą migrację najbardziej.

**Pytanie kierujące:** czego nie wiemy o danych legacy, a bez czego nie da się bezpiecznie zaprojektować modelu nowego systemu lub migracji?

## E — role, uprawnienia i workflow

Aktualnie powstają dwa ważne wyniki:

- #120 — macierz aktorów, ról i uprawnień,
- #116 / PR #117 — wspólny model statusów i przejść.

E powinno pilnować rozdzielenia dwóch rzeczy:

1. **co legacy faktycznie pozwala robić**,
2. **jak chcemy zaprojektować workflow nowego systemu**.

Po domknięciu E1/E2 można proponować dalsze prace dotyczące widoków Działu Nauki, autoryzacji lub scenariuszy workflow — ale tylko wtedy, gdy wynik jest potrzebny implementacji.

**Pytanie kierujące:** jakiej decyzji o roli, uprawnieniu lub przejściu potrzebuje teraz F2/F3/F4?

## F — pierwszy działający fragment nowego systemu

F ma obecnie najbardziej bezpośrednią odpowiedzialność za zamianę Discovery w działający produkt:

- #113 — minimalny użytkownik/rola i logowanie testowe,
- #112 — lista i szczegóły projektu/pracy,
- #91 / draft PR #93 — podsumowanie budżetu.

F nie powinien czekać na idealne zakończenie wszystkich analiz. Jeżeli reguła nie jest jeszcze potwierdzona, należy użyć danych syntetycznych i jawnego `UNKNOWN`, a następnie zgłosić zależność właściwemu zespołowi.

### Najważniejsze teraz

- F3 i F4 powinny uzgodnić wspólny model/identyfikator projektu,
- F4 powinno podmieniać placeholdery dopiero na reguły potwierdzone przez A/D,
- F2 powinno przyjąć role zgodne z wynikiem E, bez budowania pełnego SSO,
- kolejne kroki F powinny rozszerzać **ten sam vertical slice**, a nie powoływać nowe niezależne moduły demonstracyjne.

**Pytanie kierujące:** jaki najmniejszy kolejny krok sprawi, że obecne F2/F3/F4 będą działały bardziej jak jeden system?

## Minimalny standard komunikacji między zespołami

Nie tworzymy dodatkowej biurokracji. Wystarczy, że raz w tygodniu lead zapisze w uzgodnionym miejscu krótkie trzy punkty:

```text
### Handoff
- Nowe potwierdzone fakty / wynik:
- Ważne dla innych zespołów:
- Blocker / potrzebna decyzja:
```

Jeżeli PR zmienia założenie używane przez inny zespół, autor lub lead powinien **wprost oznaczyć zależne Issue/PR**. Nie zakładamy, że druga grupa sama zauważy zmianę.

## Kiedy tworzyć nowe Issue

Nowe Issue ma sens, gdy:

- istnieje konkretny brak lub decyzja potrzebna produktowi,
- nie ma już aktywnego Issue/PR o tym samym zakresie,
- rezultat da się zweryfikować,
- wiadomo, komu wynik będzie potrzebny,
- zakres jest wystarczająco mały, aby zrobić rzeczywisty postęp w około tydzień.

Nie tworzymy Issue tylko dlatego, że jakiś temat pojawia się w starym planie zajęć.

## Ograniczenia

Materiały legacy pozostają materiałami dydaktycznymi o ograniczonym dostępie. W publicznych Issues/PR i dokumentacji wolno publikować wnioski, nazwy plików/funkcji/tabel i dane syntetyczne, ale nie dane osobowe, sekrety, dump bazy ani nieautoryzowane fragmenty konfiguracji.

## Historia aktualizacji

- **14.10.2026** — utworzono żywe podsumowanie stanu A–F; zastępuje wcześniejszą listę „propozycji zadań po audycie”.
