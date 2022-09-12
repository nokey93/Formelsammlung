//
//  QuizBrain.swift
//  Formelsammlung
//
//  Created by Nguyen Anh Nguyen on 11.09.22.
//

import Foundation
import UIKit

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    
    let quiz = [
        Question(q: "Innenwinkelsumme von gleichseitigen Dreieckt = ?", a: ["180°", "270°", "360°"], correctAnswer: "180°"),
        Question(q: "Welche Eigenschaft gehört zu gleichseitigen Dreieck?", a: ["3 Seiten sind gleich", "2 Seiten sind gleich", "keine Seite ist gleich"], correctAnswer: "3 Seiten sind gleich"),
        Question(q: "Was ist der Satz des Pythagora zwischen Katheten: a, b und Hypotenuse: c ?", a: ["a² - b² = c²", "a² + b² = c²", "c² - b² = a²"], correctAnswer: "a² + b² = c²"),
        Question(q: "Innenwinkelsumme von Rechteck = ?", a: ["330°", "390°", "360°"], correctAnswer: "360°"),
        Question(q: "Wie viele Kanten hat ein Würfel?", a: ["6 Kanten", "12 Kanten", "18 Kanten"], correctAnswer: "12 Kanten"),
        Question(q: "Zwei Strecken a und b bilden einen rechten Winkel. Was sagt man?", a: ["a und b und senkrecht zueinander", "a und b sind parallel", "a und b sind winkelrecht"], correctAnswer: "a und b und senkrecht zueinander"),
        Question(q: "In einem Rechteck ist die Seite a = 8 cm und eine Seite b = 10 cm. Wie groß ist sein Umfang??", a: ["18 cm", "24 cm", "36 cm"], correctAnswer: "36 cm"),
        Question(q: "Wie heißt i der Geometrie eine gerade Linie mit einem Anfangspunkt und einem Endpunkt?", a: ["Strecke", "Strahl", "Gerade"], correctAnswer: "Strecke"),
        Question(q: "Ein Quadrat hat eine Seitenlänge von 10 cm. Wie groß ist sein Umfang?", a: ["20 cm", "40 cm", "80 cm"], correctAnswer: "40 cm"),
        Question(q: "Wie nennt man die Linie, die einen Winkel halbiert?", a: ["Tangente", "Senkrechte", "Winkelhalbierende"], correctAnswer: "Winkelhalbierende")
    ]
    
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
