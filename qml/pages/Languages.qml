import QtQuick 2.0
import Felgo 3.0

Component
{
    Page {
        Text {
            id: prueba
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Select Language")
            font.pixelSize: 45
            font.bold: true
            anchors.top: parent.top
            anchors.topMargin: 20
        }
        Column {
            anchors.centerIn: parent
            spacing: 50
            Row {
                AppButton {
                    height: 140
                    width: 500
                    flat: false
                    backgroundColor: "#7032CD32"
                    onClicked: logic.spanish()
                    Item{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 50
                        Image {
                            id:esflag
                            anchors.verticalCenter: parent.verticalCenter
                            source: "../../assets/es.svg"
                            width: 120
                            height: 90
                        }
                        Text {
                            id:estext
                            anchors.left: esflag.right
                            anchors.leftMargin: 70
                            anchors.verticalCenter: parent.verticalCenter
                            text: qsTr("Spanish")
                            font.pixelSize: 40
                            font.bold: true
                        }
                    }
                }
            }
            Row {
                AppButton {
                    height: 140
                    width: 500
                    flat: false

                    backgroundColor: "white"
                    Item{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 50
                        Image {
                            id:itflag
                            anchors.verticalCenter: parent.verticalCenter
                            source: "../../assets/it.svg"
                            width: 120
                            height: 90
                        }
                        Text {
                            id:ittext
                            anchors.left: itflag.right
                            anchors.leftMargin: 70
                            anchors.verticalCenter: parent.verticalCenter

                            text: qsTr("Italian")
                            font.pixelSize: 40
                            font.bold: true
                        }
                    }
                }
            }
            Row {
                AppButton {
                    height: 140
                    width: 500
                    flat: false

                    backgroundColor: "white"
                    Item{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 50
                        Image {
                            id:deflag
                            anchors.verticalCenter: parent.verticalCenter
                            source: "../../assets/de.svg"
                            width: 120
                            height: 90
                        }
                        Text {
                            id:detext
                            anchors.left: deflag.right
                            anchors.leftMargin: 70
                            anchors.verticalCenter: parent.verticalCenter

                            text: qsTr("German")
                            font.pixelSize: 40
                            font.bold: true
                        }
                    }
                }
            }
        }
    }
}




