
for file in ~/.dotfiles/functions/*; do
	[ -r "$file" ] && source "$file"
done