import Quickshell
import QtQuick 
import "./modules/bar/"

ShellRoot {
    id: root

    Loader {
        active: true
        sourceComponent: BottomBar {}
    }

    Loader {
        active: true
        sourceComponent: TopBar {}
    }
}