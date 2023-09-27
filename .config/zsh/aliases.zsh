# Aliases
alias notebook='conda activate notebook && cd "/home/overcode/Things/Documents/Programming languages/Rust REPL" && jupyter-lab'
alias vim='nvim'
alias top='bpytop'

# Access to parent folder
function .. {
	cd ../
}

function ... {
	cd ../../
}
function .... {
	cd ../../../
}
