# Init starship prompt
Invoke-Expression (&starship init powershell)

# Autosuggestion Fish-like (PS Readline)
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

# Search history based on input
Set-PSReadlineKeyHandler -Key UpArrow   -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Press tab key to get a list of possible completions (also on Ctrl+Space)
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
