src_dir="$PWD"
set -e

echo -n "Do you want to install git commands in this dirrectory (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
	:   
else
	while : ; do
		read -e -p  "Please set path to install directory: "
		src_dir=$REPLY
		if [[ ! -d "$src_dir" ]]; then
			mkdir -p $src_dir
		fi
		break
	done
fi
git clone https://github.com/sytranvn/git-commands.git "$src_dir/git-commands"
cd "$src_dir/git-commands"
bash setup
