#!/usr/bin/env bash
set -euo pipefail

test -f mkdocs.yml || { echo "Uruchom w katalogu pb-science-office-manual"; exit 1; }

python - <<'PY'
from pathlib import Path

def insert_once(path, marker, text, after=True):
    p = Path(path)
    s = p.read_text(encoding="utf-8")
    if text.strip() in s:
        return
    if marker not in s:
        raise SystemExit(f"Nie znaleziono znacznika w {path}: {marker}")
    s = s.replace(marker, marker + "\n\n" + text if after else text + "\n\n" + marker, 1)
    p.write_text(s, encoding="utf-8")

# PS2 — jawne rozróżnienie handoffu środowego i pełnego terminu wtorkowego
insert_once(
    "manual/14-zajecia-01-ps2.md",
    "PS1 w czwartek zaczyna od przeczytania tego handoffu.",
    """!!! important "Co PS2 musi mieć gotowe na czwartek?"
    **Nie trzeba kończyć zadań ani mieć gotowych PR-ów do czwartku.**

    Do środy 20:00 wystarczy, że:

    - każde rozpoczęte zadanie ma Issue, właściciela i aktualny status,
    - Issue jest doprecyzowane po review,
    - zapisano najważniejsze ustalenia, zależności i blockery,
    - lead opublikował krótki handoff dla PS1.

    Pełne tygodniowe rozliczenie pracy pozostaje we **wtorek do 20:00**: wynik/PR, review lub test, aktualizacja Student progress i blocker, jeśli występuje."""
)

# Organizacja — wyjaśnienie asymetrii PS1/PS2
insert_once(
    "manual/02-organizacja.md",
    "### Środa po zajęciach\n- leadzi PS2 zapisują nowe ustalenia, pytania i blockery.",
    """**To jest krótki handoff, a nie termin zakończenia zadań.**  
PS2 nie musi kończyć pracy między środą a czwartkiem. Celem jest jedynie pozostawienie PS1 aktualnej informacji: co zostało podjęte, przez kogo, jakie są ustalenia, zależności i blockery."""
)

insert_once(
    "manual/02-organizacja.md",
    "### Czwartek — PS1\n- PS1 rozpoczyna od aktualnego stanu po PS2.",
    """PS1 nie przygotowuje osobnego raportu w piątek. Obie grupy pracują dalej do wspólnego terminu **wtorek 20:00**, kiedy następuje pełna aktualizacja tygodniowa i handoff przed środowym PS2."""
)

# Tygodniowe rozliczenie — dwie różne rzeczy
insert_once(
    "manual/06-postep.md",
    "Jeżeli ważne ustalenie powstaje podczas środowych zajęć PS2, lead PS2 zapisuje je tego samego dnia.",
    """## Dwa różne terminy

**Środa 20:00 — tylko PS2:** krótki handoff dla PS1. Nie jest to termin zakończenia zadań. Wystarczy aktualny stan Issues, właściciele, ustalenia, zależności i blockery.

**Wtorek 20:00 — obie grupy:** pełne tygodniowe rozliczenie pracy: wynik/PR, review lub test, Student progress oraz aktualny blocker.

PS1 po czwartkowych zajęciach nie ma dodatkowego piątkowego raportu."""
)

# PS1 — doprecyzowanie po zajęciach
insert_once(
    "manual/11-zajecia-01-ps1.md",
    "Dzięki temu **PS2 w środę zaczyna od aktualnych wyników PS1**.",
    """PS1 nie przygotowuje dodatkowego raportu w piątek. Po czwartkowych zajęciach pracuje normalnie do wspólnego terminu **wtorek 20:00**."""
)
PY

git add manual/
git commit -m "Clarify PS2 handoff versus weekly delivery deadline"
git push origin main

echo "GOTOWE."
