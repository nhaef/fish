function fish_prompt
    set_color $fish_color_cwd
    echo -n (prompt_pwd -D 3)
    set_color $fish_color_operator
    echo -n ' > '
    set_color $fish_color_normal
end
