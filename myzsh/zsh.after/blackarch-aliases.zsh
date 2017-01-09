alias bac="pacman -Sg | grep blackarch | cut -d' ' -f1 | cut -d'-' -f2 | column"
bact() {
  pacman -Ss blackarch-$1 --color=always
}
