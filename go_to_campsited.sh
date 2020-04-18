#! /usr/bin/zsh --login

cd work/campsited/
gnome-terminal --tab \
	       --title="riails s [campsited]" \
	       -- bash -c "rails s; zsh"
echo -e "\n"
cal
echo "===="
echo $(curl -s http://api.icndb.com/jokes/random | jq -r '.value.joke')
echo "===="
CURRENT_DB=$(echo `yq r config/database.yml development.database`)  # https://github.com/mikefarah/yq
echo -e "\nCurrent DB is: \e[41m\e[5m\"\e[25m$CURRENT_DB\e[5m\"\e[0m\n" # https://misc.flogisoft.com/
exec zsh

