import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

ApplicationWindow {
    width: 950
    height: 680
    visible: true
    title: qsTr("Спортивный Клуб")


    SwipeView{
        id:mainSwipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        StatisticPage{}
        SubscriptionPage{}
        TrainerPage{}
        ClientPage {}
        NutritionPage {}
    }


     header: Column{
         width:parent.width
        Rectangle{
            height:40
            width:parent.width

            Text{
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 22
                text:"Спортивный Клуб"
                font.bold: true
            }
        }

         TabBar{
            id:tabBar
            currentIndex: mainSwipeView.currentIndex
            width:parent.width

            TabButton{
                text:"Статистика"
            }
            TabButton{
                text:"Абонименты"
            }
            TabButton{
                text:"Тренеры"
            }
            TabButton{
                text:"Клиенты"
            }
            TabButton{
                text:"Спортпит"
            }
        }
    }
}
