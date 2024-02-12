function zd 
	if test $ZELLIJ;
		if test $argv[1];
			zellij action new-tab --layout dev --cwd $argv[1];
		else;
			zellij action new-tab --layout dev;
		end
	else;
		if test $argv[1];
			zellij --layout dev options --default-cwd $argv[1];
		else;
			zellij --layout dev;
		end
	end
end
