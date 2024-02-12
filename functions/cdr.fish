function cdr -d "(C)hange (D)irectory to (R)epo";
	if test $DEV_REPO_DIR;
		if test $argv[1];
			builtin cd $DEV_REPO_DIR/$argv[1];
		else;
			builtin cd $DEV_REPO_DIR;
		end
	else;
		builtin echo "DEV_REPO_DIR not set";
		return 1;
	end
end

function cdr_complete;
	if test $DEV_REPO_DIR;
		__fish_complete_directories_relative $DEV_REPO_DIR;
	else;
		builtin echo "DEV_REPO_DIR not set";
		return 1;
	end
end

complete -c cdr -f
complete --command cdr -u --arguments '(cdr_complete)'
