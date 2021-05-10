import QtQuick 2.0
import Felgo 3.0
Component
{
Page {

  //  onPopped: logic.popped()

    title: "Quiz"

    Text{
        anchors.top: parent.top
        anchors.topMargin: 140
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        text: "Ready for the quiz?"
        font.pixelSize: 60
        anchors.horizontalCenter: parent.horizontalCenter
    }

    AppButton{
        width: 250
        height: 110
        anchors.centerIn: parent
        backgroundColor: "green"
        Text{
            anchors.centerIn:parent
            text:"Start"
            font.pixelSize: 50
            font.bold: true
            color: "white"
        }
        onClicked:

            logic.start()


        }
    }


}

