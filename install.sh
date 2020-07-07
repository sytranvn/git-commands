[[ ! -e "$1" ]] || cd $1

src_dir="$PWD"

set -e

if [[ ! -d "$src_dir" ]]; then
	mkdir -p $src_dir
fi

git clone https://github.com/sytranvn/git-commands.git "$src_dir/git-commands"
cd "$src_dir/git-commands"

bash setup
