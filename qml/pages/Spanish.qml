import QtQuick 2.0
import Felgo 3.0

Component
{
Page{
   // onPopped: logic.popped()


        Image{
            id:img1
            height: 200
            width: 500
            source: "../../assets/a.jfif"
            anchors.horizontalCenter: parent.horizontalCenter

        }
        TextEdit  {
            id: title
            text: ("La historia de Miguel de Cervantes")
            anchors.top: img1.bottom
            anchors.topMargin: 70
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 32
            font.bold: true
            selectByMouse: true
            readOnly: true

        }

       Rectangle{
           width:50
           height:150
           anchors.right: parent.right
           anchors.verticalCenter: parent.verticalCenter
           MouseArea{
           anchors.fill: parent
           onClicked: logic.quiz()

           }
        Icon {
            anchors.right: parent.fill
            icon: IconType.angleright
            size: 150
        }
        }
    TextEdit  {
        id: maintext
        text: qsTr("Miguel de Cervantes nacio el 29 de septiembre de 1547 en Madrid Escribio el famoso libro 'El Quijote' Participo en la batalla de Lepanto. Se caso con Catalina de Salazar y tuvo una hija llamada Isabel. Fallecio el 23 de Abril de 1616")
        anchors.top: img1.bottom
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.centerIn: parent
        font.pixelSize: 32
        width: parent.width - 100
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        selectByMouse: true
        readOnly: true

    }

    Image{
        anchors.top: maintext.bottom
        anchors.topMargin: 60
        anchors.horizontalCenter: parent.horizontalCenter

        height: 200
        width: 350
        source: "../../assets/b.jfif"
    }

}
}



