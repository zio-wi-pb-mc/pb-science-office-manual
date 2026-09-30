# Projekt i MVP

## Cel projektu

Nowy system ma docelowo zastąpić kluczowe funkcje istniejącego systemu oraz stopniowo przejąć procesy, które obecnie wymagają ręcznej obsługi dokumentów.

## MVP

Celem na początek grudnia jest działające MVP obejmujące:

- kluczowe funkcje obecnego systemu oznaczone jako `P0`,
- użytkowników i role,
- podstawowe widoki dla realizatora oraz Działu Nauki,
- zgodne wyliczenia finansowe,
- jeden kompletny workflow formularzowy,
- generowanie dokumentu,
- historię/audit istotnych operacji.

Po osiągnięciu MVP zakres będzie rozszerzany według priorytetów backlogu.

## Planowany stos technologiczny

- Python + Django,
- PostgreSQL,
- HTML/CSS + Bootstrap,
- JavaScript/HTMX w zakresie potrzebnym do interfejsu,
- Git/GitHub,
- Docker/Compose,
- testy automatyczne i CI.

Stary PHP/MySQL jest systemem legacy: źródłem wymagań, danych testowych i zachowania referencyjnego, a nie wzorcem architektury nowej aplikacji.
