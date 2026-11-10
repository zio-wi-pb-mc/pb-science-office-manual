# Środowiska MVP — Local Dev, Demo i Shared Staging

**Cel projektu:** do **31 stycznia 2027 r.** dostarczamy **wdrożoną, przetestowaną i odebraną przez Dział Nauki aplikację** zastępującą uzgodniony zakres starego systemu. Zespoły samodzielnie wybierają zadania i rozwiązania; roadmapa oraz Issues są propozycjami pomagającymi zaplanować pracę.

!!! warning "Plan na 31.01.2027"
    Do 13.11 test całego Demo w `DEBUG=False` (z uprawnieniami), do 08.01 próba importu i eksportu, do 25.01 restore i instalacja od czystego klona, a do 31.01 dokumentacja operatorska i przekazanie. Odpowiada [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217). **Smoke check /health nie potwierdza gotowego produktu.**

[Plan deadline](23-plan-do-31-stycznia.md) · [Macierz legacy](22-audyt-legacy-parity.md)


**Aktualizacja 10.11:** [#193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193) (obraz Demo) i [#188](https://github.com/zio-wi-pb-mc/pb-science-office/pull/188) (procedura staging) są scalone do `dev`. [#212](https://github.com/zio-wi-pb-mc/pb-science-office/pull/212) łączy logowanie, projekty i budżet, lecz **test pełnej ścieżki w `DEBUG=False` i uprawnienia do własnych projektów nadal wymagają odbioru**. W `main` jest wydanie rozwojowe v0.1.0, bieżąca integracja odbywa się w `dev`.


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

**Stan 03.11.2026:** #157 jest scalone i zamknięte. Nie trzeba ponawiać tego zadania; kolejny krok to niezależne sprawdzenie nowego obrazu Demo i integracji pełnego przepływu.

# 2. Local Demo / Release-like

!!! info "Aktualny PR"
    [#193 — C-DEMO-01](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193) otrzymał APPROVE prowadzącego, a CI z testem obrazu przechodzi. PR nadal oczekuje na niezależne uruchomienie od czystego klona i merge do `dev`. Aktualne widoki F3 na `dev` są zależne od `DEBUG=True`, dlatego pełny scenariusz użytkownika nie jest jeszcze potwierdzony w Demo z `DEBUG=False`.

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

1. **C-ENV-01 / #157** — wykonane i scalone.
2. **C-DEMO-01 / PR #193** — APPROVE prowadzącego, test obrazu CI PASS; niezależny test od czystego klona i merge jeszcze do wykonania.
3. **C-DEMO-02** — deterministyczny seed syntetycznych użytkowników/projektów/budżetów.
4. **F/E/C** — udostępnić pełny przepływ projektu w Demo z `DEBUG=False` bez obchodzenia kontroli dostępu.
5. **C-STAGE-01 / PR #188** — uzgodnić procedurę ze stanem obrazu Demo, następnie review i integracja.
6. **C-REL-01 / [PR #90](https://github.com/zio-wi-pb-mc/pb-science-office/pull/90)** — wydanie v0.1.0 do `main` scalone 04.11.2026. Kolejne wydanie dopiero po odbiorze pełnego Demo `DEBUG=False` i uprawnień; `dev` pozostaje gałęzią integracyjną.
7. Po dostępności serwera — uruchomić Shared Staging.

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
