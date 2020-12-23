#teste git
#!/usr/bin/env bash
echo "SEJA BEM VINDO SR." $(whoami)

OBA="⣿⣿⣿⣿⠟⣩⣴⣶⣦⣍⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⢏⣾⣿⣿⠿⣿⣿⣿⣌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⠟⣩⣬⣭⠻⣿⣀⣿⣿⣿⢟⣤⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣷⣤⣒⠲⠶⢿⣘⣛⣻⠿⣿⣸⣿⣿⣷⣝⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⠸⣿⣿⣿⣿⣿⣦⢹⣿⣿⣿⣿⣷⣌⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⡿⢉⣴⣶⣦⠙⣿⣿⣿⣿⡼⣿⣿⣿⣿⣿⢿⣷⡌⢿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣷⡘⠿⠟⣛⡁⢻⣿⣿⣿⣿⣝⢿⣿⠻⣿⢮⣭⣥⣄⡹⣿⣿⣿⣿⣿⣿⣿
⣿⣿⡇⢿⣿⣿⣿⠘⣿⣿⣿⣿⣿⣷⣦⣟⡶⠶⢾⣭⣽⣗⡈⠻⣿⣿⣿⣿⣿
⣿⣿⣷⡈⣿⣿⣿⣧⣌⠛⠿⣿⣿⣿⣿⣿⣿⣷⣷⡲⣶⣶⣾⣷⣌⡛⢿⣿⣿
⣿⣿⣿⠗⡈⠻⣿⣿⡿⢛⣶⣤⣍⠻⣿⣿⣿⣿⣿⡿⠆⠻⠿⣿⣿⡿⠗⣢⣿
⣿⣿⡏⢼⣿⣷⣶⢋⣴⣿⣿⣿⣿⡇⢀⣠⠄⣠⣶⣶⣿⣿⣷⣶⣶⣶⣿⣿⣿
⣿⣿⣷⣌⠛⠛⠛⠈⠛⠛⠛⠛⢛⠁⢈⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣇⡈⢉⣩⡭⠽⢛⣒⣒⣒⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣇⣉⣥⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "$OBA"
echo "
Digite o numero da função de que deseja:
1. Instalar repositorios
2. Remover repositorios
3. Expurgar repositorios
4. Upgrade
5. Update
6. Auto purge
7. Auto remove"

read repo
if [ "$repo" = 1 ]
then
	echo "Digite o nome do repositorio [ex: gimp]: "
	read soft
	sudo  apt-get install "$soft"
fi
if [ "$repo" = 2 ]
then
	echo "Digite o nome do repositorio que deseja remover: "
	read rmv
	sudo apt remove "$rmv"
fi
if [ "$repo" = 3 ]
then
	echo "Digite o nome do que deseja ARREBATAR desse desktop: "
	read xpurg
	sudo apt purge "$xpurg"
fi
if [ "$repo" = 4 ]
then
	echo "Atualizando repositorios (UPGRADE)"
	apt list --upgradable
	echo "Se deseja continuar, pressione 'y', se não, pressione 'n' "
	read resp
	if [ "$resp" = "y" ]
	then
		sudo apt upgrade
			if [ "$resp" = "n" ]
			then
				exit
			fi
		fi
fi
if [ "$repo" = 5 ]
then
	echo "Aguarde..."
	sudo apt update
fi
if [ "$repo" = 6 ]
then
	echo "Aguarde..."
	sudo apt autopurge
fi
if [ "$repo" = 7 ]
	then
		echo "Aguarde..."
		sudo apt autoremove
fi
