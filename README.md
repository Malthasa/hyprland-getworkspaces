This is a small bash script that outputs the currently open hyprland workspaces in text, formatted similarly to how workspaces are displayed on waybar. An example for a use-case is creating a small notification that outputs this text using `notify-send`

Here is an example of what it might output:

`x o o · o · · · · ·`

As you can see, in the example, workspace 1 is currently selected and 2,3 and 5 are active.

### How to use script

Use `chmod u+x getworkspaces.sh` and then execute using `./getworkspaces.sh`

### Changing the Symbols

If you want to change the symbols, you'll have to edit the script (spooky). You'll want to change the `·` symbols in the list variable, the `x` in selectedworkspace and the `o` in activeworkspace

That's really all there is to it. I hope you can find some use for this and thank you :]
