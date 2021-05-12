import QtQuick 2.0
import Felgo 3.0
Component{
    Page {
        onPopped:{
            if (dataModel.count > 0)
                --dataModel.count
            dataModel.content= dataModel.es_qz.jsonData[dataModel.count]
            console.debug("count"+dataModel.count)}
        Text {
            id: correct
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            text: qsTr("Correct answers ")
            anchors.topMargin: 200
            font.pixelSize: 60
            font.bold: true
            color: "green"
        }
        Text {
            id: correctn
            anchors.horizontalCenter: correct.horizontalCenter
            anchors.top: correct.bottom
            text: qsTr(""+dataModel.correct)
            anchors.topMargin: 20
            font.pixelSize: 60
            font.bold: true
            color: "green"
        }
        Text {
            id: wrong
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: correctn.bottom
            anchors.topMargin: 50
            font.pixelSize: 60
            font.bold: true
            color: "red"
            text: qsTr("Wrong answers ")
        }
        Text {
            id: wrongn
            anchors.horizontalCenter: wrong.horizontalCenter
            anchors.top: wrong.bottom
            text: qsTr(""+dataModel.wrong)
            anchors.topMargin: 20
            font.pixelSize: 60
            font.bold: true
            color: "red"
        }
        AppButton
        {
            id: redo
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 69
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                dataModel.count = 0
                mainPage.popAllExceptFirstAndPush(start)
            }
            height:100
            textColor: "white"
            fontBold: true
            flat: false
            width:250
            text: "Do again"
            textSize: 35
            backgroundColor: "orange"
        }
    }
}
