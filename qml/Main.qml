import Felgo 3.0
import QtQuick 2.15
import "pages"
import "model"

App {

    // business logic
    Logic {
        id: logic
    }

    // List model contiene los todos quizzes
    ListModel {
        id: quizes
    }

    // model
    DataModel {
        id: dataModel
        dispatcher: logic // data model handles actions sent by logic
    }

    NavigationStack {
        id: mainPage

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
