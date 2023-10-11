#
# ~/.bash_profile
#

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi


# opam configuration
test -r /home/liamm/.opam/opam-init/init.sh && . /home/liamm/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -e /home/liamm/.nix-profile/etc/profile.d/nix.sh ]; then . /home/liamm/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
