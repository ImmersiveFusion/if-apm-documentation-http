# Installing on macOS

!!! warning "Experimental"
    The macOS build of IAPM Desktop is still considered experimental and not fully supported. Additional manual steps are required to use.

## Steam

!!! warning "Coming soon!"
    Steam is availability to planned for early 2026.

Learn more about [Steam](https://store.steampowered.com/about/){:target="sp"} on their web site.

## Offline Installer (DMG)

<!--
[Latest Release Build](https://ifapm.blob.core.windows.net/release/rtm/dmg/ImmersiveAPM.latest.dmg){:class="md-button md-button--primary"}
[Latest Beta Build](https://ifapm.blob.core.windows.net/release/beta/dmg/ImmersiveAPM.latest.dmg){:class="md-button md-button--secondary"}
-->
[Latest Alpha Build](https://ifapm.blob.core.windows.net/release/alpha/dmg/ImmersiveAPM.latest.dmg){:class="md-button"}

1. Click on the button above to download the installer for IAPM Desktop for macOS from the cloud. The file size is around `1.5GB`

1. Open the Disk Image file (DMG) and drag to your `Applications`.

1. Open `Terminal` and execute the following command to remove `Immersive APM` from quarantine.

```bash
xattr -d com.apple.quarantine /Applications/Immersive\ APM.app
```
