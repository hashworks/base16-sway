# base16-sway

This repository is meant to work with
[Base16-Shell](https://github.com/tinted-theming) from Tinted Theming. It
provides a simple template that can be used with the base16 color schemes to
generate a functional config file for
[swaywm/sway](https://github.com/swaywm/sway), a tiling and dynamic window
manager.

## Usage

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
bsse16_tokyo-night-dark
```

Verify the hook created to the symbolic link to the correct template:

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
