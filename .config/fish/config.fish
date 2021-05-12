function setenv
	set -gx $argv[1] $argv[2]
end

function appendpath
	set l (echo $argv[1] | envsubst)
	echo "Appending $l"
	fish_add_path (echo $argv[1] | envsubst)
end
