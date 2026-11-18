# Git i Pull Requests

## Branch

Przykład dla Issue `#123`:

```text
feature/123-budget-summary
```

Nie pracujemy bezpośrednio na `main`.

## Pull Request

PR powinien zawierać:

- `Closes #123`,
- krótki opis wykonanej zmiany,
- sposób sprawdzenia,
- informację o testach,
- informację o istotnym użyciu AI.

Otwieraj Draft PR wcześniej, jeśli zmiana jest większa i potrzebujesz konsultacji.

## Review i merge

Autor nie zatwierdza własnej pracy. Reviewer powinien sprawdzić nie tylko styl kodu, ale również zgodność z wymaganiem, przypadki brzegowe i testy.

**Studenci samodzielnie scalają zaakceptowane PR-y do `dev`** po merytorycznym review i zielonym CI. Prowadzący może komentować, recenzować i wystawiać APPROVE, ale nie wykonuje za studentów zwykłych merge'ów. Zmiany `dev → main` zatwierdza i wykonuje prowadzący. Zadbajcie o prawidłowe powiązanie z Issue i historię review — ma to znaczenie dla indywidualnego rozliczenia.
