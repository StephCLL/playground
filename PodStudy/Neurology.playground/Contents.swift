import UIKit
import Foundation

//store all the questions that will be used in the app.

class Question {
let questionText : String // for all the questions
let answer : String // for all the answers
let answerList : [String]


init(text: String, correctAnswer: String, possibleAnswers : [String]) {
    questionText = text
    answer = correctAnswer
    answerList = possibleAnswers
}
    
class QuestionBank {
    var list = [Question]()
    
    init(){
        
        // Add the Question to the list of questions
        list.append(Question(text: "Which nerve does not include L2", correctAnswer: "Accessory obturator n.", possibleAnswers: ["Femoral n.", "Obturator n.", "Accessory obturator n.", "Lateral femoral cutaneous n."]))
        
        list.append(Question(text: "Which nerve is made up by L2, L3, and L4?", correctAnswer: "Femoral n.", possibleAnswers: ["Femoral n.", "Accessory obturator n.", "Lumbosacral trunk", "LAteral femoral cutaneous n."]))
        
        list.append(Question(text: "Ilioinguinal nerve is made of up of which ventral rami?", correctAnswer: "L1", possibleAnswers: ["L1", "L1 and L2", "T12 and L1", "T12"]))
        
        list.append(Question(text: "Which is compsoed of L4,L5, and S1?", correctAnswer: "Superior gluteal nerve", possibleAnswers: ["Superior gluteal nerve", "Inferior gluteal nerve", "Posterior femoral cutaneous nerve", "Pudendal nerve"]))
        
        list.append(Question(text: "Which is composed of L4, L5, S1, S2, and S3?", correctAnswer: "Tibial nerve", possibleAnswers: ["Common peroneal nerve", "Tibial nerve", "Pudendal nerve", "All of the above"]))
        
        list.append(Question(text: "Which is composed of only S2, S3, and S4?", correctAnswer: "Pudendal nerve", possibleAnswers: ["Common peroneal nerve", "Posterior femoral cutaneous nerve", "Pudendal nerve", "All of the above"]))
        
        list.append(Question(text: "Which is composed of only L4, L5, S1, and S2?", correctAnswer: "Common peroneal nerve", possibleAnswers: ["Common peroneal nerve", "Posterior femoral cutaneous nerve", "Pudendal nerve", "All of the above"]))
        
        list.append(Question(text: "Which nerve does not make up the sciatic nerve?", correctAnswer: "Pudendal nerve", possibleAnswers: ["Common peroneal nerve", "tibial nerve", "Pudendal nerve", "All of the above make up the sciatic nerve"]))
        
        list.append(Question(text: "Which is not a dermatome of the anterior aspect of the lower extremities?", correctAnswer: "S1", possibleAnswers: ["L1", "L3", "L5", "S1"]))
        
        list.append(Question(text: "Which dermatome is the anterior lateral leg?", correctAnswer: "L5", possibleAnswers: ["L2", "L3", "L4", "L5"]))

        list.append(Question(text: "Which is not a dermatome of the posterior aspect of the lower extremities?", correctAnswer: "L5", possibleAnswers: ["L5", "S1", "S2", "S3"]))
        
        list.append(Question(text: "Which is not a dermatome of the dorsal and plantar foot?", correctAnswer: "S2", possibleAnswers: ["L4", "L5", "S1", "S2"]))

        list.append(Question(text: "Which dermatome of the dorsal foot is most medial?", correctAnswer: "L4", possibleAnswers: ["L4", "L5", "S1", "S2"]))

        list.append(Question(text: "What cutaneous nerve correlates with L4 dermatome?", correctAnswer: "Saphenous nerve", possibleAnswers: ["Sural nerve", "Tibial nerve", "Saphenous nerve", "None of the above"]))

        list.append(Question(text: "Which nerve root is responsible for knee jerk reflex?", correctAnswer: "L2, L3, L4", possibleAnswers: ["L1, L2, L3", "L2, L3, L4", "L4 and L5", "S1 and S2"]))

        list.append(Question(text: "What nerve root is responsible for the achilles reflex?", correctAnswer: "S1 and S2", possibleAnswers: ["L1, L2, L3", "L2, L3, L4", "L3, L4, L5", "S1 and S2"]))

        list.append(Question(text: "A positive Babinski sign in adults is suggestive of what?", correctAnswer: "Upper motor neuron lesion", possibleAnswers: ["Upper motor neuron lesion", "Lower motor neuron lesion", "Neuroma", "All of the above"]))

        list.append(Question(text: "When you dorsiflex and invert the foot, which spinal nerve are you testing?", correctAnswer: "L4", possibleAnswers: ["L3", "L4", "L5", "S1"]))

        list.append(Question(text: "When you dorsiflex the hallux, which spinal nerve are you testing?", correctAnswer: "L5", possibleAnswers: ["L3", "L4", "L5", "S1"]))

        list.append(Question(text: "Eversion of the foot tests which spinal nerve?", correctAnswer: "S1", possibleAnswers: ["L3", "L4", "L5", "S1"]))

        list.append(Question(text: "A patient with Trendelenburg gait due to a lesion on the left superior gluteal nerve would show what gait?", correctAnswer: "Leaning to the left", possibleAnswers: ["Leaning forwards", "Leaning backwards", "Leaning to the right", "Leaning to the left"]))

        list.append(Question(text: "A patient with a foot drop but can still evert the foot has possible damage to which nerve?", correctAnswer: "Deep peroneal nerve", possibleAnswers: ["Sural nerve", "Tibial nerve", "Superficial peroneal nerve", "Deep peroneal nerve"]))
        
        list.append(Question(text: "The 1st interspace of the dorsal foot is innervated by which nerve? ", correctAnswer: "Deep peroneal nerve", possibleAnswers: ["Superficial peroneal nerve", "Deep peroneal nerve", "Medial dorsal cutaneous nerve", "Intermeditate dorsal cutaneous nerve"]))
        
    }
}
    
}
