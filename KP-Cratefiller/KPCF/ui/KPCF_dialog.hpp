/*
    Killah Potatoes Cratefiller

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Provides the cratefiller dialog.
*/

class KPCF_dialog {
    idd = 758067;
    movingEnable = 0;

    class controlsBackground {

        class KP_DialogTitle: KP_DialogTitleC {
            text = "$STR_KPCF_TITLE";
        };

        class KP_DialogArea: KP_DialogBackgroundC {};

        // Crates

        class KP_TransportTitle: KP_InlineTitle {
            text = "$STR_KPCF_TITLETRANSPORT";
            x = KP_GETCX(KP_X_VAL_C,KP_WIDTH_VAL_C,0,1);
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,0,48);
            w = KP_GETW(KP_WIDTH_VAL_C,1);
            h = KP_GETH(KP_HEIGHT_VAL_C,16);
        };

        // Equipment

        class KP_EquipmentTitle: KP_TransportTitle {
            text = "$STR_KPCF_TITLEEQUIPMENT";
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,9,48);
        };

    };

    class controls {

        class KP_DialogCross: KP_DialogCrossC {};

        // Crates

        class KP_ComboCrate: KP_Combo {
            idc = 75801;
            x = KP_GETCX(KP_X_VAL_C,KP_WIDTH_VAL_C,0,1);
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,3,48);
            w = KP_GETW(KP_WIDTH_VAL_C,1);
            h = KP_GETH(KP_HEIGHT_VAL_C,24);
        };

        class KP_ButtonSpawnCrate: KP_InlineButton {
            text = "$STR_KPCF_SPAWNCRATE";
            x = KP_GETCX(KP_X_VAL_C,KP_WIDTH_VAL_C,0,1);
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,5,48);
            w = KP_GETW(KP_WIDTH_VAL_C,1);
            h = KP_GETH(KP_HEIGHT_VAL_C,24);
            onButtonClick = "call KPCF_fnc_spawnCrate";
        };

        class KP_ButtonDeleteCrate: KP_ButtonSpawnCrate {
            text = "$STR_KPCF_DELETECRATE";
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,7,48);
            onButtonClick = "call KPCF_fnc_deleteCrate";
        };

        // Equipment

        class KP_ComboEquipment: KP_ComboCrate {
            idc = 75802;
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,12,48);
            onLBSelChanged = "call KPCF_fnc_equipmentList";
        };

        class KP_ComboWeapons: KP_ComboCrate {
            idc = 75803;
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,14,48);
            onLBSelChanged = "call KPCF_fnc_magazineList";
        };

        class KP_EquipmentList: KP_ListBox {
            idc = 75804;
            x = KP_GETCX(KP_X_VAL_C,KP_WIDTH_VAL_C,0,4);
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,16,48);
            w = KP_GETW(KP_WIDTH_VAL_C,(8/7));
            h = KP_GETH(KP_HEIGHT_VAL_C,(48/32));
        };

        class KP_ButtonAddEquipment: KP_InlineButton {
            text = "+";
            x = KP_GETCX(KP_X_VAL_C,KP_WIDTH_VAL_C,7,8);
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,16,48);
            w = KP_GETW(KP_WIDTH_VAL_C,8);
            h = KP_GETH(KP_HEIGHT_VAL_C,3);
        };

        class KP_ButtonRemoveEquipment: KP_ButtonAddEquipment {
            text = "-";
            y = KP_GETCY(KP_Y_VAL_C,KP_HEIGHT_VAL_C,32,48);
        };

    };
};
