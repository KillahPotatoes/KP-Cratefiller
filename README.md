# Dubjunks Scripts
[![GitHub release](https://img.shields.io/github/release/KillahPotatoes/dubjunks-scripts.svg)](https://github.com/KillahPotatoes/dubjunks-scripts/releases)
[![Github All Releases](https://img.shields.io/github/downloads/KillahPotatoes/dubjunks-scripts/total.svg)](https://github.com/KillahPotatoes/dubjunks-scripts)

[Killah Potatoes Discord](https://discord.gg/fjSPn8t)

# KP Cratefiller

## Description
![cfpreview](https://i.imgur.com/ysawNQ2.jpg)

With this script you get a dialog with the ability to manage several inventories. It's created to make logistics easier and pleasant.

You can spawn and delete defined crates, fill these crates and also other objects with defined items.

## Features

* Clear designed dialog
* Own config file for several things (base and spawn object, working radius, crates and available items)
* Spawn and delete defined crates
* Generated selection of magazines for a pre selected weapon
* Easy management of large amounts of supplys
* Overview of the present object inventory

## Languages

Currently the mod is localized for:
* English
* German

## Mods

Required:
* [CBA_A3](https://steamcommunity.com/workshop/filedetails/?id=450814997)

Optional:
* [ACE3](https://steamcommunity.com/sharedfiles/filedetails/?id=463939057)

## How to use

Download the latest releases from the [Releases Tab](https://github.com/KillahPotatoes/dubjunks-scripts/releases) and extract the archive.

Move the folder `KPGUI` and `KPCF` plus the files `description.ext` `KPCF_config.sqf` and `stringtable.xml` to the root of your mission folder, e.g.: exampleMission.Altis

If you already have a `description.ext` you need to do the following instructions:

* add the following to your file:

    #include "KPGUI\KPGUI_defines.hpp"
    #include "KPCF\ui\KPCF_dialog.hpp"

* If you don't have a `CfgFunctions` definition in your file, you need to add the following:

    class CfgFunctions {
        #include "KPCF\KPCF_functions.hpp"
    };

* If you have a `CfgFunctions` definition in your file, you need to add `#include "KPCF\KPCF_functions.hpp"` to your `CfgFunctions`

Now you're done!

For Support join the Killah Potatoes discord and move in the `#kp-mods`channel.

## Planned features

* Automatic generated item lists with blacklist
* More equipment categorys
* Indicator of the present fill level
* Export and import function for created inventories

## Licence
Copyright (C) 2018 [Dubjunk](https://github.com/Dubjunk)

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.
