#! /bin/bash

a="hyprctl workspaces -j"
# Get the amount of active Workspaces
b=$($a | jq length)

list=(· · · · · · · · · ·)

selectedworkspace="x"
activeworkspace="o"

# Loop through the Workspaces
for ((i = 0; i < b; i++)); do

  # Get the ID-Number of the Worspace at i
  c=$($a | jq -r .[$i].id)

  # Check if the Workspace at i is the active Workspace
  if [[ $(hyprctl activeworkspace -j | jq -r .id) = "$c" ]]; then
    list[c - 1]=$selectedworkspace
  elif [[ $c -gt 10 ]]; then
    list[c - 1]=$c
  elif [[ $c != -98 ]]; then
    list[c - 1]=$activeworkspace
  fi
done

# Output the final String
echo "${list[*]}"
