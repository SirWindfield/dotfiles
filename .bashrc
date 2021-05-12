function appendpath() {
	"export PATH=$1:$PATH" >> "$HOME/.profile"
}

function setenv() {
	export "$1=$2"
}
 
