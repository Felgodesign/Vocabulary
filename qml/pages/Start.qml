import QtQuick 2.15
import QtQuick.Controls 2.4
import Felgo 3.0

Component
{
    Page
    {
        id: start
        onPopped:{
            if (dataModel.count > 0)
                --dataModel.count
            dataModel.content= dataModel.es_qz.jsonData[dataModel.count]
            console.debug("count"+dataModel.count)}
        title: "Quiz"
        Text{
            id:q1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            text: dataModel.content["title"]
            anchors.topMargin: 50
            font.pixelSize: 40
            font.bold: true
        }
        Text{
            id:q1txt
            text: dataModel.content["question"]
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: q1.top
            anchors.topMargin: 100
            font.pixelSize: 40
        }

        Column{
            id: column
            anchors.centerIn: parent
            spacing: 50

            Row{
                Rectangle{
                    height: 100
                    width: 500
                    Item{

                        Text{
                            id: aletter
                            text: "A"
                            font.pixelSize: 50
                            anchors.right: asqr.left
                            anchors.rightMargin: 40
                            anchors.verticalCenter: asqr.verticalCenter
                        }
                        anchors.horizontalCenter: parent.horizontalCenter

                        AppButton{
                            id: asqr
                            anchors.horizontalCenter: parent.horizontalCenter
                            flat: false
                            backgroundColor: "#0062cc"
                            width: 450
                            height: 120
                            onClicked: {
                                bsqr.backgroundColor= "#0062cc"
                                csqr.backgroundColor= "#0062cc"

                                if(aletter.text.toLowerCase() === dataModel.content["correct"])
                                {

                                    backgroundColor = "green"
                                    next.visible= true
                                    csqr.enabled = false
                                    bsqr.enabled = false
                                    ++dataModel.correct

                                }
                                else{
                                    backgroundColor = "red"
                                    ++dataModel.wrong

                                }
                            }


                            Text{
                                id: atext
                                anchors.centerIn: parent
                                text: dataModel.content["answer"]["a"]
                                color:"white"
                                font.bold: true
                                font.pixelSize: 40
                            }
                        }
                    }
                }
            }
            Row{
                Rectangle{
                    height: 100
                    width: 500
                    Item{
                        Text{
                            id: bletter
                            text: "B"
                            font.pixelSize: 50
                            anchors.right: bsqr.left
                            anchors.rightMargin: 40
                            anchors.verticalCenter: bsqr.verticalCenter
                        }
                        anchors.horizontalCenter: parent.horizontalCenter

                        AppButton{
                            id: bsqr
                            anchors.horizontalCenter: parent.horizontalCenter
                            flat: false
                            backgroundColor: '#0062cc'
                            width: 450
                            height: 120
                            onClicked: {
                                asqr.backgroundColor= "#0062cc"
                                csqr.backgroundColor= "#0062cc"
                                if(bletter.text.toLowerCase() === dataModel.content["correct"])
                                {
                                    ++dataModel.correct
                                    backgroundColor = "green"
                                    next.visible= true
                                    asqr.enabled = false
                                    csqr.enabled = false
                                }
                                else{
                                    ++dataModel.wrong

                                    backgroundColor = "red"
                                }
                            }
                            Text{
                                id: btext
                                anchors.centerIn: parent
                                text: dataModel.content["answer"]["b"]
                                color:"white"
                                font.bold: true
                                font.pixelSize: 40
                            }
                        }
                    }
                }
            }
            Row{
                Rectangle{
                    height: 100
                    width: 500
                    Item{
                        Text{
                            id: cletter
                            text: "C"
                            font.pixelSize: 50
                            anchors.right: csqr.left
                            anchors.rightMargin: 40
                            anchors.verticalCenter: csqr.verticalCenter
                        }
                        anchors.horizontalCenter: parent.horizontalCenter
                        AppButton{
                            id: csqr
                            anchors.horizontalCenter: parent.horizontalCenter
                            backgroundColor: "#0062cc"
                            flat: false
                            width: 450
                            height: 120
                            onClicked: {
                                asqr.backgroundColor= "#0062cc"
                                bsqr.backgroundColor= "#0062cc"
                                if(cletter.text.toLowerCase() === dataModel.content["correct"])
                                {

                                    csqr.backgroundColor = "green"
                                    next.visible= true
                                    asqr.enabled = false
                                    bsqr.enabled = false
                                }
                                else{
                                    csqr.backgroundColor = "red"
                                }
                            }
                            Text{
                                id: ctext
                                text: dataModel.content["answer"]["c"]
                                anchors.centerIn: parent
                                color:"white"
                                font.bold: true
                                font.pixelSize: 40
                            }
                        }
                    }
                }
            }
        }
        AppButton
        {
            id: next
            flat: false
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 69
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                ++dataModel.count
                if( dataModel.count > dataModel.es_qz.jsonData.length - 1)

                {
                    logic.resultstart()

                }
                else{
                    logic.start()
                }

            }

            visible: false
            height:100
            width:250
            text: "Next"
            textColor: "white"
            fontBold: true
            textSize: 35
            backgroundColor: "orange"

        }
    }
}






