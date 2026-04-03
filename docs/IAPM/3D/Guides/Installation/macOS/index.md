# Installing on macOS

!!! warning "Experimental"
    The macOS build of IAPM is still considered experimental and not fully supported. Additional manual steps are required.

## Steam

[Open in Steam :material-steam:](steam://store/3624760){ .md-button .md-button--primary }
[View on Steam Store :material-open-in-new:](https://store.steampowered.com/app/3624760/Immersive_APM/){ .md-button target="_blank" }

{!template/store-steam.mdp!}

Free to install. A subscription is required to use IAPM. Learn more about [Steam](https://store.steampowered.com/about/){ target="_blank" } on their website.

## Offline Installer (DMG)

<!--
[Latest Release Build :material-download:](https://ifapm.blob.core.windows.net/release/rtm/dmg/ImmersiveAPM.latest.dmg){ .md-button .md-button--primary }
[Latest Beta Build :material-download:](https://ifapm.blob.core.windows.net/release/beta/dmg/ImmersiveAPM.latest.dmg){ .md-button }
-->
[Latest Alpha Build :material-download:](https://ifapm.blob.core.windows.net/release/alpha/dmg/ImmersiveAPM.latest.dmg){ .md-button }

1. Click on the button above to download the installer for IAPM for macOS from the cloud. The file size is around `1.5GB`

1. Open the Disk Image file (DMG) and drag to your `Applications`.

1. Open `Terminal` and execute the following command to remove `Immersive APM` from quarantine.

```bash
xattr -d com.apple.quarantine /Applications/Immersive\ APM.app
```
