function cdt -d "(C)hange (D)irectory to (T)emp";
	if test $DEV_TEMP_DIR;
		if test $argv[1];
			builtin cd $DEV_TEMP_DIR/$argv[1];
		else;
			builtin cd $DEV_TEMP_DIR;
		end
	else;
		builtin echo "DEV_TEMP_DIR not set";
		return 1;
	end
end

function cdt_complete;
	if test $DEV_TEMP_DIR;
		__fish_complete_directories_relative $DEV_TEMP_DIR;
	else;
		builtin echo "DEV_TEMP_DIR not set";
		return 1;
	end
end

complete -c cdt -f
complete --command cdt -u --arguments '(cdt_complete)'
