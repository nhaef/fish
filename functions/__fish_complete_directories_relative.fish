function __fish_complete_directories_relative;
	set -l arg (path normalize $argv[1]);
	set comp (commandline -ct);
	set -l dirs (complete -C "'' $arg/$comp" | string match -r '.*/$' | string replace $arg '' | string trim -l -c '/');
	printf "%s\n" $dirs;
end
