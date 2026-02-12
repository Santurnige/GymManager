import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

Rectangle {
    width: 380
    height: 175
    radius: 25
    color: "#FFFFFF"
    border.color: "#E5E7EB"
    border.width: 1

    property string itemName: ""
    property string itemEmail: ""
    property string itemPhone: ""

    // Имя тренера
    Text {
        id: trainerName
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.topMargin: 20
        font.pixelSize: 18
        font.bold: true
        text: name
        color: "#111827"
    }

    // Иконка телефона и номер
    Row {
        id: phoneRow
        anchors.left: parent.left
        anchors.top: trainerName.bottom
        anchors.leftMargin: 20
        anchors.topMargin: 15
        spacing: 8

        // Иконка телефона
        Text {
            font.family: "Material Icons"
            font.pixelSize: 16
            text: "📞"
            color: "#6B7280"
        }

        Text {
            font.pixelSize: 14
            text: phone
            color: "#6B7280"
        }
    }

    // Иконка email и адрес
    Row {
        id: emailRow
        anchors.left: parent.left
        anchors.top: phoneRow.bottom
        anchors.leftMargin: 20
        anchors.topMargin: 8
        spacing: 8

        // Иконка email
        Text {
            font.family: "Material Icons"
            font.pixelSize: 16
            text: "✉️"
            color: "#6B7280"
        }

        Text {
            font.pixelSize: 14
            text: email
            color: "#6B7280"
        }
    }

    // Разделитель
    Rectangle {
        id: divider
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: emailRow.bottom
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        anchors.topMargin: 15
        height: 1
        color: "#E5E7EB"
    }

    Text {
        anchors.left: parent.left
        anchors.top: divider.bottom
        anchors.leftMargin: 20
        anchors.topMargin: 15
        font.pixelSize: 14
        text: "Клиентов: 15"
        color: "#6B7280"
    }

    // Кнопки редактировать и удалить (справа сверху)
    Row {
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 20
        anchors.topMargin: 20
        spacing: 12

        // Кнопка редактировать
        Rectangle {
            width: 32
            height: 32
            radius: 6
            color: "#F3F4F6"

            Text {
                anchors.centerIn: parent
                font.pixelSize: 16
                text: "✏️"
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {

                }
            }
        }

        // Кнопка удалить
        Rectangle {
            width: 32
            height: 32
            radius: 6
            color: "#FEE2E2"

            Text {
                anchors.centerIn: parent
                font.pixelSize: 16
                text: "🗑️"
                color: "#DC2626"
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {

                }
            }
        }
    }
}
