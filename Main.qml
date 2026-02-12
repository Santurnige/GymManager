import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material


ApplicationWindow {
    width: 1400
    height: 700
    visible: true
    title: qsTr("Спортивный Клуб")

    Material.accent: Material.Blue



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


     header:Rectangle{
         width:parent.width
         color:"white"
         Column{
         anchors.fill: parent

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
}
