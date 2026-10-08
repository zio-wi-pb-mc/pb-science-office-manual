#!/usr/bin/env bash
set -euo pipefail

test -f mkdocs.yml || { echo "Uruchom w katalogu pb-science-office-manual"; exit 1; }

python - <<'PY'
from pathlib import Path

p = Path("manual/14-zajecia-01-ps2.md")
s = p.read_text(encoding="utf-8")

marker = s.index("# 2. Zespół D — legacy, baza i migracja")

prefix = '''# Zajęcia 1 — PS2 (środa)

Ta strona jest **instrukcją wykonania pierwszych zajęć PS2**. Pracuj kolejno od punktu 1 do końca.

PS2 jest drugą grupą tego samego projektu. Nie zaczyna od zera — korzysta z wyników i handoffu PS1.

## Co ma istnieć po zajęciach

Na koniec powinny istnieć:

1. profile wszystkich studentów PS2,
2. trzy zespoły **D/E/F**,
3. trzech tymczasowych leadów,
4. przeczytany handoff PS1 i lista zależności od A/B/C,
5. jedno konkretne Issue dla każdego studenta,
6. review jednego Issue kolegi,
7. rozpoczęta realizacja zadania,
8. krótki handoff PS2 dla czwartkowego PS1.

---

## 1. Profil studenta

Każdy student PS2:

1. akceptuje zaproszenie do organizacji GitHub,
2. wchodzi do repozytorium `pb-science-office`,
3. wybiera **Issues → New issue → Student profile**,
4. wpisuje tytuł:

`[PROFILE] Imię Nazwisko`

5. uzupełnia formularz,
6. zapisuje Issue.

Profil jest obowiązkowy także w PS2 i służy prowadzącemu do utworzenia możliwie zrównoważonych zespołów.

---

## 2. Zapoznaj się ze stanem projektu po PS1

Przed wyborem własnego zadania przeczytaj:

1. aktualny GitHub Project,
2. handoff zespołów A/B/C,
3. zakończone i otwarte PR-y istotne dla Twojego obszaru.

Nie powtarzamy pracy wykonanej przez PS1.

Jeżeli wynik A/B/C jest niepełny albo niepewny, zapisz zależność lub pytanie zamiast tworzyć własne założenia.

---

## 3. Podział na zespoły D/E/F

Prowadzący tworzy trzy zespoły po około 4 osoby:

- **Zespół D — legacy, baza i migracja**
- **Zespół E — role, workflow i wymagania użytkowników**
- **Zespół F — pierwszy vertical slice nowego systemu**

Każdy zespół otrzymuje tymczasowego leada.

Lead:

- pilnuje, aby każdy miał jedno główne Issue,
- zbiera blockery i zależności,
- pilnuje, aby praca nie dublowała A/B/C,
- przygotowuje krótki handoff dla PS1,
- nadal wykonuje własne zadanie.

---

'''

rest = s[marker:]
rest = rest.replace("# 2. Zespół D — legacy, baza i migracja", "# 4. Zespół D — legacy, baza i migracja", 1)
rest = rest.replace("# 3. Zespół E — role, workflow i użytkownicy", "# 5. Zespół E — role, workflow i użytkownicy", 1)
rest = rest.replace("# 4. Zespół F — pierwszy vertical slice", "# 6. Zespół F — pierwszy vertical slice", 1)
rest = rest.replace("# 5. Issue i review", "# 7. Issue i review", 1)
rest = rest.replace("# 6. Handoff PS2 → PS1", "# 8. Handoff PS2 → PS1", 1)

p.write_text(prefix + rest, encoding="utf-8")
PY

git add manual/14-zajecia-01-ps2.md
git commit -m "Align PS2 first class onboarding with PS1"
git push origin main

echo "GOTOWE."
