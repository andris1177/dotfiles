import QtQuick
import Quickshell
import Quickshell.Hyprland

Item {
    id: topRoot
    property bool calendarOpen: false

    PanelWindow {
        id: topPanel
        color: '#00ffffff'

        anchors {
            top: true
            left: true
            right: true
            bottom: false
        }

        implicitHeight: 25
        margins {
            top: 2
            left: 2
            right: 2
        }

        Rectangle {
            anchors.fill: parent
            color: '#27000000'

            Text {
                id: clock
                anchors.centerIn: parent
                color: "white"
                text: Qt.formatDateTime(new Date(), "HH:mm")

                Timer {
                    interval: 1000
                    running: true
                    repeat: true
                    onTriggered: clock.text = Qt.formatDateTime(new Date(), "HH:mm")
                }

                MouseArea {
                    id: mouse
                    anchors.fill: parent
                    hoverEnabled: true

                    onEntered: topRoot.calendarOpen = true
                    onExited: topRoot.calendarOpen = false
                }
            }
        }
    }
    
    PopupWindow {
        id: calendarPopup
        visible: calendarOpen
        width: 500
        height: 500

        anchor.window: topPanel
        anchor.item: clock

        // Attach popup BELOW the item
        anchor.gravity: Edges.Bottom

        // Offset horizontally so popup is centered on the item
        anchor.rect.x: clock.width / 2 - width / 2
        anchor.margins.top: 8

        Rectangle {
            anchors.fill: parent
            color: "#111111"
            border.color: "#ffffff"
            border.width: 2

            Text {
                anchors.centerIn: parent
                color: "white"
                text: "Calendar popup"
            }
        }
    }
}