import QtQuick 2.15
import Felgo 3.0
import "../../assets/Json/"
Item {
    property alias dispatcher: logicConnection.target
    property alias es_qz: es_qz
    property var count: 0
    property var correct: 0
    property var wrong: 0
    property var content

    Esquizz
    {
        id:es_qz
    }
    Connections{
        id: logicConnection
        onChooselanguage: mainPage.push(languages)
        onSpanish: mainPage.push(es)
        onQuiz: mainPage.push(quiz)
        onStart:{
            content= es_qz.jsonData[count]
            mainPage.push(start)
            console.debug("length data"+ count)
        }
        onResultstart:{
            mainPage.push(resultstart)
        }
    }
}
