import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property int value: 0

    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        width: parent.width
        height: parent.height
        PullDownMenu {
            MenuItem {
                objectName: "resetItem"
                text: "reset"
                onClicked: value = 0
            }
        }
        Column {
            spacing: 10
            width: parent.width
            height: parent.height
            Text {
                objectName: "countText"
                width: parent.width
                text: value
                color: "#ffffff"
                font.pointSize: 96
                horizontalAlignment: Text.AlignHCenter
            }

            Button {
                objectName: "addButton"
                width: parent.width
                text: "add"
                onClicked: value++
            }
        }
    }
}

