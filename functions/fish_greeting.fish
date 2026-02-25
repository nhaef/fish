function fish_greeting
    set_color $fish_color_normal
    echo -n 'Hi, '
    set_color $fish_color_user
    echo -n $USER
    set_color $fish_color_normal
    echo -n ', running '
    set_color $fish_color_command
    echo -n "fish $version"
    set_color $fish_color_normal
    echo -n ' on '
    set_color $fish_color_host
    echo -n (hostname)
    set_color $fish_color_normal
    echo '.'
end
