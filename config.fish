if status is-interactive

    # Fish settings
    fish_config prompt choose informative_vcs

    set unityPath2022 "/c/Programs/Unity/2022.3.17f1/Editor"
    set unityPath2021 "/c/Programs/Unity/2021.3.28f1/Editor"
    set gitPath "/c/Programs/Git/mingw64/bin/"
    set defaultEditor "nvim"
    alias fco="$defaultEditor ~/.config/fish/config.fish"
    alias fr=". ~/.config/fish/config.fish"

    alias open="explorer"
    # Git
    #alias git="$gitPath/git.exe"
    alias gch="git checkout"
    alias gchn="git checkout -b"
    alias ga="git add"
    alias gaa="git add --all"
    alias gl="git log"
    alias glo="git log --oneline"
    alias gcm="git commit -m"
    alias gcan="git commit --amend --no-edit"
    alias gcam="git commit --amend -m"
    alias gagm="git add --all && git commit -m"
    alias lg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
    alias gs="git status"
    alias gp="git push"
    alias gi="git init"

    # Unity
    alias unity2021="$unityPath2021/Unity.exe"
    alias unity2022="$unityPath2022/Unity.exe"
    alias ush21="unity2021 -projectPath . &>/dev/null"
    alias ush22="unity2022 -projectPath . &>/dev/null"

    # Oh-my-posh
    #oh-my-posh init fish --config /ucrt64/share/oh-my-posh/themes/capr4n-new.omp.json | source
end


# Windows terminal
function storePathForWindowsTerminal --on-variable PWD
    if test -n "$WT_SESSION"
      printf "\e]9;9;%s\e\\" (cygpath -w "$PWD")
    end
end
