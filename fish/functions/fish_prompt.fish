function fish_prompt
    set -l last_command_status $status

    if test $last_command_status -ne 0
        set_color FDD9DE --background E4455A
        printf ' %d ' $last_command_status
    end

    set_color C0C8D8 --background 354256
    printf ' '(fish_prompt_pwd_dir_length=0 prompt_pwd)' '

    set_color normal
    printf ' '
end