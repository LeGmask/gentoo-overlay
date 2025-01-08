# napoleon gentoo overlay

This [Gentoo overlay](https://wiki.gentoo.org/wiki/Overlay) aims to provide some ebuilds that I need and are not in the official repo or in another overlay.
If some projects are broken or you have any suggestions, please open an issue or a pull request.

## Installation

### `repos.conf` method

Add the following content to `/etc/portage/repos.conf/napoleon.conf`:

```ini
[napoleon]
location = /usr/local/overlay/napoleon
sync-type = git
sync-uri = https://github.com/LeGmask/gentoo-overlay
auto-sync = yes
```

Then, sync the overlay:

```bash
emaint sync -r napoleon
```
