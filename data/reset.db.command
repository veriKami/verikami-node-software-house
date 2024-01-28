#!/bin/sh
#: ───────────────────────────────────────────────────────────────────
printf "\033[H\033[J"; tput bel; cd "${0%/*}" >/dev/null

info(){ if [ $? -eq 0 ]; then echo "DONE ${@}"; else echo "FAIL"; fi }

echo "───────────────────────────────────────────────────────────────"
echo 🍋 DB Regeneration
echo "───────────────────────────────────────────────────────────────"

diff -w orig.db.json db.json

echo "───────────────────────────────────────────────────────────────"
sleep 1; read -p "🍋 For a While ... "
echo "───────────────────────────────────────────────────────────────"

cp orig.db.json db.json
info "(cp) orig.db.json -> db.json"

diff -w orig.db.json db.json
info "(diff) orig.db.json -> db.json"

echo "───────────────────────────────────────────────────────────────"
sleep 2; tput bel; read -p "🍋 Gangnam Style (강남스타일) "

#: ───────────────────────────────────────────────────────────────────
sleep 1; "${0}"
