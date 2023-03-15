# base16-sway

[base16][base16-home-link] template for [sway][sway-link].

This repository is meant to work with [base16][base16-home-link] from Tinted
Theming. It provides a hook and template that can be used to dynamically load
base16 color schemes in sway.

## Installation

Clone the repository:

```text
git clone https://github.com/freddiehaddad/base16-sway.git ~/.config/base16-sway
```

Copy the hook to your base16-shell hooks directory:

```text
cp ~/.config/base16-sway/hooks/base16-sway.sh ~/.config/base16-shell/hooks
```

Re-run your base16 theme to execute the hook:

```text
base16_tokyo-night-dark
```

Verify the hook created the symbolic link to the correct template:

```text
 sway.base16.conf ⇒ /home/.../.config/base16-sway/themes/base16-tokyo-night-dark.config
```

In your sway configuration file (near the top), import the theme:

```text
include $HOME/.config/tinted-theming/sway.base16.conf
```

Then, below the color scheme import, set the colors:

```text
# Basic color configuration using the Base16 variables for windows and borders.
# Property Name         Border  BG      Text    Indicator Child Border
client.focused          $base05 $base0D $base00 $base0D $base0D
client.focused_inactive $base01 $base01 $base05 $base03 $base01
client.unfocused        $base01 $base00 $base05 $base01 $base01
client.urgent           $base08 $base08 $base00 $base08 $base08
client.placeholder      $base00 $base00 $base05 $base00 $base00
client.background       $base07
```

If you use a statusbar, paste following block in the bar section in your config:

```text
colors {
    background $base00
    separator  $base01
    statusline $base04

    # State             Border  BG      Text
    focused_workspace   $base05 $base0D $base00
    active_workspace    $base05 $base03 $base00
    inactive_workspace  $base03 $base01 $base05
    urgent_workspace    $base08 $base08 $base00
    binding_mode        $base00 $base0A $base00
}
```

Reload your config to apply the new colors (default key bind is
**shift+mod+c**).

## Other

[Original repo][github-sway-repo-link]

[base16-home-link]: https://github.com/base16-project/home
[sway-link]: https://swaywm.org
[github-sway-repo-link]: https://github.com/rkubosz/base16-sway
