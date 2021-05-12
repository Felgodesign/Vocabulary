import QtQuick 2.0
import Felgo 3.0

Item {

    property var jsonData: [
        {
            "id": 1,
            "title": "Pregunta 1",
            "question": "Quien es Miguel de Cervantes?",
            "answer": { "a": "Un culturista", "b": "Un músico", "c": "Un escritor" },
            "correct": "c"
        },
        {
            "id": 2,
            "title": "Pregunta 2",
            "question": "Cual es su libro mas famoso?",
            "answer": { "a": "El Quijote", "b": "D'Artagnan", "c": "Los tres Mosqueteros" },
            "correct": "a"
        },
        {
            "id": 3,
            "title": "Pregunta 3",
            "question": "Quien es Don Quijote?",
            "answer": { "a": "Un personaje ficticio", "b": "Un soldado", "c": "Un monje" },
            "correct": "a"
        }
    ]


}
