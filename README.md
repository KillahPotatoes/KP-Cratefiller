# KP Cratefiller
[![GitHub release](https://img.shields.io/github/release/KillahPotatoes/KP-cratefiller.svg)](https://github.com/KillahPotatoes/KP-cratefiller/releases)
[![Github All Releases](https://img.shields.io/github/downloads/KillahPotatoes/KP-cratefiller/total.svg)](https://github.com/KillahPotatoes/KP-cratefiller)

[Killah Potatoes Discord](https://discord.gg/fjSPn8t)

## Description
![cfpreview](https://i.imgur.com/f1SBQzP.jpg)

With this script you get a dialog with the ability to manage several inventories. It's created to make logistics easier and pleasant.

You can spawn and delete defined crates, fill these crates and also other objects with defined items.

## Features

* Clear designed dialog
* detection of cratefiller objects via classname
* CBA settings integration
* Spawn and delete defined crates
* Generated selection of magazines and attachments for a pre selected weapon
* Generated item lists
* Easy management of large amounts of supplies
* Overview of the present object inventory
* Export and import function for inventories
* Squad and Player overview for easy supplies of several players

## Languages

Currently the module is localized for:
* English
* German
* Polish (outdated)

## Mods

Required:
* [CBA_A3](https://steamcommunity.com/workshop/filedetails/?id=450814997)

Supported:
* [ACE3](https://steamcommunity.com/sharedfiles/filedetails/?id=463939057)

## How to use

Download the latest releases from the [Releases Tab](https://github.com/KillahPotatoes/KP-cratefiller/releases) and extract the archive.

Move the folder `KP` plus the following files to the root of your mission folder, e.g.: exampleMission.Altis
`description.ext`
`LICENSE`
`README.md`
`stringtable.xml`

If you already have a `description.ext` you need to do the following instructions:

* add the following to your file:

    #include "KP\KPGUI\KPGUI_defines.hpp"

    #include "KP\KPCF\ui\defines.hpp"
    #include "KP\KPCF\ui\KP_cratefiller_dialog.hpp"

* If you don't have a `CfgFunctions` definition in your file, you need to add the following:

    class CfgFunctions {
        class KP {
            #include "KP\KPCF\functions.hpp"
        };
    };

* If you have a `CfgFunctions` definition in your file, you need to add:

    class KP {
        #include "KP\KPCF\functions.hpp"
    };

Now you're done!

## How to use with KP Liberation

Download the latest releases from the [Releases Tab](https://github.com/KillahPotatoes/KP-cratefiller/releases) and extract the archive.

Move the folder `KP` to the root of your mission folder, e.g.: exampleMission.Altis

Edit the description.ext

* add the following to the end of your file:

    #include "KP\KPCF\ui\defines.hpp"
    #include "KP\KPCF\ui\KP_cratefiller_dialog.hpp"

* Modify lines 230-233 from

    class CfgFunctions {
        #include "CfgFunctions.hpp"
        #include "KP\KPPLM\KPPLM_functions.hpp"
    };

to

    class CfgFunctions {
        #include "CfgFunctions.hpp"
        #include "KP\KPPLM\KPPLM_functions.hpp"
        class KP {
            #include "KP\KPCF\functions.hpp"
        };
    };

Edit the stringtable.xml

* Copy line 4 (<Package name="KPCF">) to line 328 (</Package>) from the cratefiller stringtable into the existing one from liberation

Now you're done!

## For Support join the Killah Potatoes discord and move in the `#kpcf`channel.

## Planned features

* Mod Conversion

## Licence
Copyright (C) 2018 [Dubjunk](https://github.com/Dubjunk)

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.
