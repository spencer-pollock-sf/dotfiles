winget install JanDeDobbeleer.OhMyPosh
Install-Module -Name Terminal-Icons -Repository PSGallery

new-item -type file -path $profile -force

Add-Content -Path $profile -Value 'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\iterm2.omp.json" | Invoke-Expression'
Add-Content -Path $profile -Value "Import-Module -Name Terminal-Icons"