# This is a script to duplicate all the apps that I use on a daily basis on my windows machine to any new windows machine that I am on
# Written on June 06, 2023
# Revised and Updated Version on June 25, 2023

# Windows Apps: Note to future-self below are app-ids that winget uses
$apps = @(
    # Web Browers
    "Mozilla.Firefox"
    "Google.Chrome"

    # Text Editors and Development
    "Neovim.Neovim"
    "Microsoft.VisualStudioCode"
    "Python.Python.3.11"
    "Docker.DockerDesktop"
    "Git.Git"
    "JesseDuffield.lazygit"

    # Note-Taking
    "Notion.Notion"
    "Obsidian.Obsidian"

    # Messaging and Meetings
    "Discord.Discord"
    "WhatsApp.WhatsApp"
    "Telegram.TelegramDesktop"
    "Microsoft.Teams"
    "SlackTechnologies.Slack"
    "Zoom.Zoom"

    # Entertainment
    "Valve.Steam"
    "Spotify.Spotify"

    # VPN
    "ProtonTechnologies.ProtonVPN"

    # Productvity
    "Doist.Todoist"
    "Foxit.PhantomPDF"

    # Hardware
    "Logitech.OptionsPlus"
)

# FLAGS
$ID = "-e", "--id"
$PROMPT = "--accept-package-agreements", "--accept-source-agreements"

foreach ($app in $apps) {
    winget install $ID $app $PROMPT
}
