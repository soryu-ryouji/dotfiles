set -U fish_greeting ""

set -U fish_prompt_pwd_dir_length 3

alias c='clear'
alias n='neofetch'
alias v='nvim'
alias lg='lazygit'
alias pc='proxychains'
# alias tt='yazi'

set fish_color_command bryellow
set fish_color_param brwhite
set fish_color_quote white

function color_arrow
	set_color -o brred
	echo -n ''
	set_color -o brgreen
	echo -n ''
    set_color -o bryellow
	echo -n ' '
	set_color normal
end

function git_prompt
	if not git rev-parse --is-inside-work-tree >/dev/null 2>&1
        return
    end

	set git_bracket_color "brblack"
	set_color $git_bracket_color
	echo -n '[ '
	echo -n (git symbolic-ref --short HEAD)' '

	set unstaged_files (git diff --name-only)
	set uncommitted_files (git ls-files --others --exclude-standard)
	set committed_files (git diff --cached --name-only | wc -l)

	if test (count $uncommitted_files) -gt 0
		set_color brred
		echo -n ; echo -n (count $uncommitted_files); echo -n  " "
		set_color normal
	end

	if test (count $unstaged_files) -gt 0
		set_color bryellow
		echo -n ; echo -n (count $unstaged_files); echo -n " "
		set_color normal
	end

	if test $committed_files -gt 0
		set_color brgreen
		echo -n ; echo -n $committed_files; echo -n " "
		set_color normal
	end

	set_color $git_bracket_color
	echo -n '] '
	set_color normal
end

function fish_prompt
	# if set -q __fish_prompt_started
    #     echo ''
    # else
    #     set -g __fish_prompt_started
    # end

	color_arrow

	set_color brcyan
    echo -n (whoami)' '
    set_color normal

    echo -n 'in '

	set_color brwhite
    echo -n (prompt_pwd) ' '
    set_color normal

	git_prompt
end

function tt
	set tmp (mktemp -t "yazi-cwd.XXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
 
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
