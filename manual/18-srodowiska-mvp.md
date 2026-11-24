# Środowiska i odbiór aplikacji

**Cel ZIO:** do **31 stycznia 2027 r.** aplikacja ma być **wdrożona, przetestowana i odebrana przez Dział Nauki**. Zespoły mogą samodzielnie wybierać zadania; wskazane Issues są propozycjami, nie przydziałami.

**Stan zweryfikowany: 24.11.2026.** [PR #193](https://github.com/zio-wi-pb-mc/pb-science-office/pull/193) (Docker Demo), [PR #188](https://github.com/zio-wi-pb-mc/pb-science-office/pull/188) (procedura Shared Staging) i [PR #207](https://github.com/zio-wi-pb-mc/pb-science-office/pull/207) (bezpieczny seed kont) są scalone do `dev`.

## Co istnieje

| Środowisko | Sposób pracy | Aktualny status |
|---|---|---|
| **Local Dev** | Docker Compose, Django, PostgreSQL, lokalny kod | CI i testy aplikacji przechodzą |
| **Local Demo** | `compose.demo.yaml`, Gunicorn, `DEBUG=False`, migracje przy starcie | Obraz i infrastruktura działają; **F3/F4 nadal 404** przy `DEBUG=False`, więc pełny scenariusz FAIL |
| **Shared Staging** | Procedura w `docs/shared-staging.md` | Dokumentacja jest; brak potwierdzonego wdrożenia i odbioru na serwerze uczelni |
| **Docelowe wdrożenie** | Uzgodniona infrastruktura, użytkownicy, backup/restore | Wymaga ustalenia hostingu i dostępów przed styczniem |

## Local Dev

```bash
git clone https://github.com/zio-wi-pb-mc/pb-science-office.git
cd pb-science-office
git switch dev
cp .env.example .env
docker compose up --build
```

**Nie zostawiaj przykładowych haseł i kluczy w rzeczywistym wdrożeniu.** Ustaw bezpieczny `SECRET_KEY`, hasło PostgreSQL i zgodną konfigurację hostów.

## Docker Demo

```bash
GIT_SHA=$(git rev-parse --short HEAD) docker compose -f compose.yaml -f compose.demo.yaml up -d --build --wait
```

Używaj konfiguracji `APP_ENV=demo`, `DEBUG=False`. Seed kont działa wyłącznie w dozwolonym środowisku i wymaga `TEST_USER_PASSWORD` ustawionego poza repozytorium.

**Sprawdzaj pełny scenariusz:**

1. Health, readiness, wersja i migracje PostgreSQL.
2. Logowanie testowym użytkownikiem A.
3. Wykaz projektów → szczegóły → budżet i JSON.
4. Dostęp użytkownika B do projektu A przez bezpośrednie URL — odpowiedź odmowna.
5. Wylogowanie i powtórna próba wejścia.
6. F01: nowa fiszka, zapis do bazy, ponowny odczyt, odmowa cudzej fiszki.

Obecne testy w [CI](https://github.com/zio-wi-pb-mc/pb-science-office/actions/runs/44258929850) potwierdzają budowę obrazu i podstawową dostępność, **nie zaliczają punktów 3–6**. Ich brak to zadania P0: [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173), [#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219), [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217).

## Przygotowanie Shared Staging

C przygotowuje konfigurację w ramach #217 na podstawie `docs/shared-staging.md`. Dostępność VM, SSH, DNS i HTTPS wymaga uzgodnienia z administratorem. Izolowana baza, dane syntetyczne, sekrety poza repozytorium, ograniczony SSH, backup i rollback. Przed udostępnieniem sprawdzić działanie widoków i uprawnień przy `DEBUG=False`; konfiguracja `APP_ENV=staging` wymaga osobnej weryfikacji. Lokalny test #246 na #236 można zacząć niezależnie od VM.

## Do wdrożenia i przekazania

Do **15 stycznia** aplikacja ma działać w uzgodnionym środowisku; **16–25 stycznia** pracownicy Działu Nauki testują procesy. Potrzebne są instrukcja instalacji od czystego klona, dostępne migracje, test backup/restore, bezpieczne konta i ścieżka rollbacku. [PR #228](https://github.com/zio-wi-pb-mc/pb-science-office/pull/228) wymienia wymagania C — teraz potrzebne są wykonanie i testy, nie drugi raport.

[Roadmapa](21-roadmap-3-tygodnie.md) · [Plan do 31 stycznia](23-plan-do-31-stycznia.md)
