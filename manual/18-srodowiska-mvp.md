# Środowiska MVP — Local Dev, Demo i Shared Staging

Celem jest, aby projekt był nie tylko kodem w repozytorium, ale **aplikacją, którą można łatwo uruchomić, zobaczyć i testować**.

Nie nazywamy środowiska demonstracyjnego „produkcją”. Produkcja uczelniana będzie wymagała osobnych decyzji infrastrukturalnych i bezpieczeństwa.

# 1. Local Dev

Środowisko codziennej pracy programisty.

Docelowo nowa osoba powinna wykonać:

```bash
git clone ...
cd pb-science-office
cp .env.example .env
docker compose up --build
```

i otrzymać:

- Django,
- PostgreSQL,
- dokumentację,
- migracje,
- health/readiness,
- działający aktualny vertical slice.

## Kryteria

- działa po czystym klonie,
- nie wymaga ręcznego poprawiania kodu lub konfiguracji,
- testy można uruchomić jednym udokumentowanym poleceniem,
- kilka klonów nie koliduje ze sobą,
- błędny `.env` daje czytelny błąd.

Aktualny najważniejszy krok: **#157**.

# 2. Local Demo / Release-like

To środowisko służy do oglądania produktu tak, jak będzie zachowywał się po wdrożeniu.

Powinno różnić się od Local Dev:

- kod znajduje się w obrazie Docker, a nie jest montowany z hosta,
- `DEBUG=False`,
- aplikacja nie korzysta z developmentowego `runserver`,
- uruchamia się PostgreSQL,
- wykonywane są migracje,
- ładowane są wyłącznie dane syntetyczne/demonstracyjne,
- dostępne są health/readiness,
- widoczna jest wersja aplikacji / commit SHA.

Przykładowy docelowy start:

```bash
docker compose -f compose.yaml -f compose.demo.yaml up -d --build
```

Dokładna postać może się zmienić — ważniejszy jest rezultat niż nazwa pliku.

## Po co nam Demo

- prowadzący może szybko zobaczyć aktualny produkt,
- student może sprawdzić rezultat bez uruchamiania własnego środowiska deweloperskiego,
- łatwiej wykrywać problemy integracyjne,
- mamy przygotowanie do późniejszego Shared Staging.

# 3. Shared Staging

Wspólna wersja demonstracyjna dostępna na serwerze.

Na tym etapie **nie zakładamy jeszcze, że serwer jest dostępny**. Najpierw przygotowujemy aplikację tak, aby jej wdrożenie było powtarzalne.

Shared Staging powinien docelowo:

- uruchamiać zaakceptowany obraz aplikacji,
- korzystać z PostgreSQL,
- zawierać tylko syntetyczne dane,
- mieć testowe konta,
- wskazywać wersję/commit,
- umożliwiać szybki reset danych,
- mieć prosty healthcheck,
- nie zawierać danych ani sekretów z legacy.

## Aktualizacja stagingu

Preferowany model:

1. zmiana trafia do `dev`,
2. CI przechodzi,
3. budowany jest obraz,
4. zaakceptowany obraz trafia na staging,
5. wykonywany jest smoke test,
6. studenci i prowadzący mogą testować aktualny produkt.

Nie musi to od razu być w pełni automatyczny CD. Na początku wystarczy **jedna powtarzalna, udokumentowana procedura**.

# Podział odpowiedzialności

## C — owner środowiska

C odpowiada za:

- Docker,
- CI,
- obrazy,
- konfigurację,
- health/readiness,
- instrukcję,
- release-like Demo,
- procedurę Shared Staging.

## F — owner działającego produktu

F odpowiada za to, aby w środowisku było co testować:

- logowanie,
- lista projektów,
- szczegóły,
- budżet,
- później formularz/workflow.

## A/B/D/E

Pozostałe zespoły dostarczają:

- dane syntetyczne,
- przypadki testowe,
- uprawnienia,
- reguły,
- importer,
- scenariusze E2E.

# Proponowana kolejność Issues

1. **C-ENV-01** — domknąć clean-clone (#157),
2. **C-REL-01** — pierwszy stabilny release (#90),
3. **C-DEMO-01** — release-like Docker Demo,
4. **C-DEMO-02** — seed użytkowników/projektów/budżetów,
5. **C-CI-01** — CI buduje i uruchamia obraz,
6. **C-REL-02** — wersja/commit widoczna w aplikacji,
7. **C-STAGE-01** — procedura wdrożenia na wspólną maszynę,
8. po dostępności serwera — uruchomić Shared Staging.

# Definition of Done środowiska demonstracyjnego

Środowisko można uznać za gotowe, gdy osoba spoza autora:

1. klonuje repo albo pobiera wskazany obraz,
2. wykonuje udokumentowane polecenia,
3. otwiera aplikację,
4. loguje się syntetycznym kontem,
5. przechodzi do projektu i budżetu,
6. widzi wersję aplikacji,
7. wykonuje smoke test bez ręcznych poprawek.

# Bezpieczeństwo

- żadnych danych osobowych,
- żadnego dumpu produkcyjnej bazy,
- żadnych prawdziwych haseł,
- żadnych sekretów w repo,
- dane demonstracyjne muszą być syntetyczne,
- testowe konta nie są projektem docelowego SSO.
