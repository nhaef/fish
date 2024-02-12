function cdc -d "(C)hange (D)irectory to (C)onfig";
	if test $argv[1];
		builtin cd ~/.config/$argv[1];
	else;
		builtin cd ~/.config;
	end
end

function cdc_complete;
	__fish_complete_directories_relative ~/.config;
end

complete -c cdc -f
complete --command cdc -u --arguments '(cdc_complete)'
