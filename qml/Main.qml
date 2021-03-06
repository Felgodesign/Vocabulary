import Felgo 3.0
import QtQuick 2.12
import QtQuick.Controls 1.4
import "pages"
import "model"

App {

    // business logic
    Logic {
        id: logic
    }
    // model
    DataModel {
        id: dataModel
        dispatcher: logic // data model handles actions sent by logic
    }
    NavigationStack {
        id: mainPage

        transitionDelegate: StackViewDelegate {

               pushTransition: StackViewTransition {
                 NumberAnimation {
                   target: enterItem
                   property: "opacity"
                   from: 0
                   to: 1
                   duration: 200
                 }
               }

               popTransition: StackViewTransition {
                 NumberAnimation {
                   target: exitItem
                   property: "opacity"
                   from: 1
                   to: 0
                   duration: 200
                 }
               }
             }

        Dashboard{
        }
        Languages{
            id: languages
        }
        Spanish{
            id: es
        }
        Quiz{
            id: quiz
        }
        Start{
            id: start
        }
        ResultsStart{
            id: resultstart
        }
    }

}
