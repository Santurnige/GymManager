import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

Rectangle{
    color:"#F9FAFB"

    Rectangle{
        id:topHeader
        anchors.top: parent.top
        anchors.topMargin: 45
        width: parent.width
        height: 160
        color:"#F9FAFB"

        //просто надпись
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 45
            anchors.verticalCenter: parent.verticalCenter // <-- И это добавь для выравнивания
            font.bold: true
            font.pixelSize: 20
            text: qsTr("Тренеры")
        }

        //кнопка добавить тренера
        Button{
            anchors.right: parent.right
            anchors.rightMargin: 45
            anchors.verticalCenter: parent.verticalCenter // <-- И это для кнопки
            font.pixelSize: 20
            background: Rectangle{
                color:"black"
                radius: 15
            }
            contentItem: Text {
                font.pixelSize: 17
                text: "+ Добавить тренера"
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }


    ScrollView {
        anchors.left: parent.left
        anchors.top: topHeader.bottom
        height: parent.height - topHeader.height
        width: parent.width
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AsNeeded

        Flow {
            id: trainerFlow
            width: parent.parent.width / 1.1
            spacing: 15

            Repeater {
                model: itemsModel

                delegate: TrainerElement {
                    itemName: name
                    itemEmail: email
                    itemPhone: phone
                }
            }

        }
    }
}
