# Bank propozycji — gdy nie masz własnego pomysłu

To **pomysły do wyboru**, a nie obowiązkowe zadania ani przydział według zespołu. Najpierw sprawdź [priorytety](16-propozycje-zadan-po-audycie.md), [Project](https://github.com/orgs/zio-wi-pb-mc/projects/1/views/1) i [PR](https://github.com/zio-wi-pb-mc/pb-science-office/pulls). Jeśli coś już istnieje, pomóż autorowi lub wybierz inny brak.

| Propozycja | Konkretny rezultat | Powiązanie |
|---|---|---|
| Test cudzych zasobów | Zaloguj A/B, sprawdź listę, szczegóły, budżet i JSON przez ręczny URL; udokumentuj FAIL i poprawkę | [#173](https://github.com/zio-wi-pb-mc/pb-science-office/issues/173), [#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219) |
| Test Demo w CI | Jeden job naprawdę przechodzący `login → F3 → F4` z `DEBUG=False`, PostgreSQL i odrzuceniem anonimowego dostępu | [#219](https://github.com/zio-wi-pb-mc/pb-science-office/issues/219), [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) |
| Odbiór F01 przez inny zespół | Ręcznie uruchom migracje PostgreSQL, POST i odczyt fiszki; odnotuj wynik bez dublowania scalonych testów | [PR #229](https://github.com/zio-wi-pb-mc/pb-science-office/pull/229), [PR #231](https://github.com/zio-wi-pb-mc/pb-science-office/pull/231) (już scalone) |
| Model trwałych projektów | Migracja + bezpieczny odczyt F3/F4 z PostgreSQL; przypadek kolizji identyfikatorów legacy/lat | [#220](https://github.com/zio-wi-pb-mc/pb-science-office/issues/220) |
| Minimalna edycja | Formularz operatora: utwórz, edytuj, błędy walidacji, brak uprawnienia | [#221](https://github.com/zio-wi-pb-mc/pb-science-office/issues/221) |
| Zapis finansowy | Jeden rekord planu/rezerwacji/wydatku na trwałej bazie i test salda po restarcie | [#214](https://github.com/zio-wi-pb-mc/pb-science-office/issues/214) |
| Adapter importera | Import jednego syntetycznego projektu z dry-run do ORM, następnie drugi idempotentny przebieg | [#216](https://github.com/zio-wi-pb-mc/pb-science-office/issues/216) |
| Zestawienie CSV | Wydruk/zapis raportu finansowego z tego samego projektu i roku, z kontrolą dostępu | [#215](https://github.com/zio-wi-pb-mc/pb-science-office/issues/215) |
| Odbiór wdrożenia | Przetestuj backup/restore na osobnej bazie, instrukcję od czystego klona i smoke po wdrożeniu | [#217](https://github.com/zio-wi-pb-mc/pb-science-office/issues/217) |

**Zasada:** można zaproponować zupełnie inne rozwiązanie, jeżeli wnosi widoczny efekt do wspólnej aplikacji. Nie tworzyć duplikatu formularza F01, modułu projektów, Dockera ani nowego szkieletu Django.

[Plan do stycznia](23-plan-do-31-stycznia.md) · [Zadania A–F](21-roadmap-3-tygodnie.md)
