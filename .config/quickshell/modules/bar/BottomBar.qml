import QtQuick
import Quickshell
import Quickshell.Hyprland

PanelWindow {
    id: bottomPanel
    color: "transparent"

    anchors {
        top: false
        left: true
        right: true
        bottom: true
    }

    implicitHeight: 35
    margins {
        top: 2
        left: 2
        right: 2
    }

    Rectangle {
        id: bar 
        anchors.fill: parent
        color: '#29000000'
        radius: 0
        border.color: '#00ffffff'
        border.width: 3

        Row {
            id: workspaceRow

            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
                leftMargin: 15
            }
            spacing: 8

            Repeater {
                model: Hyprland.workspaces
                    
                Rectangle {
                    width: 24
                    height: 24
                    radius: 3
                    color: modelData.active ? '#a9a1e1' : '#000000' 
                    border.color: '#000000'
                    border.width: 2

                    MouseArea {
                        anchors.fill: parent

                        onClicked: Hyprland.dispatch("workspace " + modelData.id)
                    }
                        
                    Text {
                        text: modelData.id
                        anchors.centerIn: parent
                        color: modelData.active ? '#000000' : "#cccccc"
                        font.pixelSize: 17
                        font.family: "Inter"
                    }
                }
            }
        }
    }
}
