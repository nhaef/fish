function fish_prompt
    set_color B8F
    echo -n (prompt_pwd -D 3)
    set_color normal
    echo -n ' # '
end
