Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -BellStyle None

$env:STARSHIP_CONFIG = "$env:USERPROFILE\.config\starship.toml"
if (Test-Path "$env:USERPROFILE\.config\starship.toml") {
    Invoke-Expression (&starship init powershell)
}
