import QtQuick 2.0
import Felgo 3.0

Page{
    id: root
    Rectangle
    {
        Text {
            id: logo
            anchors.centerIn: parent
            text: qsTr("LANG UP")
            font.pixelSize: 50
            color: "white"
            font.bold: true
        }
        anchors.horizontalCenter: parent.horizontalCenter
        height:200
        width: 700
        color: "green"
    }
    Column{
        anchors.centerIn: parent
        spacing: 20
        AppButton{
            AppText {
                id: lang
                anchors.centerIn: parent
                text: qsTr("Choose your language")
                font.pixelSize: 36
                color: "white"
                font.bold: true

            }
            backgroundColor: "brown"
            width: 430
            height: 120
            flat: false
            onClicked: logic.chooselanguage()
        }
        AppButton{
            AppText {
                id: flashcards
                anchors.centerIn: parent
                text: qsTr("Flashcards")
                font.pixelSize: 36
                color: "white"
                font.bold: true
            }
            backgroundColor : "#2032CD32"
            width: 430
            height: 120
            flat: false
        }
        AppButton{
            AppText {
                id: progress
                anchors.centerIn: parent
                text: qsTr("Check your progress")
                font.pixelSize: 36
                color: "white"
                font.bold: true
            }
            backgroundColor: "#200000FF"
            width: 430
            height: 120
            flat: false

        }
    }
}
