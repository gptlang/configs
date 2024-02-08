<!--https://unix.stackexchange.com/questions/448811/how-to-export-a-gnome-terminal-profile-->

```bash
# Saving your config
$ dconf dump /org/gnome/terminal/legacy/profiles:/ > profile.dconf

# Loading the config
$ dconf load /org/gnome/terminal/legacy/profiles:/ < profile.dconf
```
