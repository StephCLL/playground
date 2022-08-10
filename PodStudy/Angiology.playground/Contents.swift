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
        list.append(Question(text: "Which is a remnant of the sciatic artery?", correctAnswer: "All of the above", possibleAnswers: ["Inferior Gluteal A.", "Popliteal A.", "Peroneal A.", "All of the above"]))
        
        list.append(Question(text: "When does the desceending aorta usually divide into common iliac arteries?", correctAnswer: "L4", possibleAnswers: ["L2", "L3", "L4", "S1"]))
        
        list.append(Question(text: "Which artery can compress the left common iliac vein and cause persistent pain and possible blood clots?", correctAnswer: "Right common iliac A.", possibleAnswers: ["Right common iliac A.", "Left common iliac A.", "Popliteal A.", "Peroneal A."]))

        list.append(Question(text: "Which is not a branch off the anterior trunk of the internal iliac artery?", correctAnswer: "Iliolumbar A.", possibleAnswers: ["Internal pudendal A.", "Iliolumbar A.", "Inferior Gluteal A.", "Obturator A."]))

        list.append(Question(text: "Which is not a branch off the posterior trunk of the internal iliac artery?", correctAnswer: "Internal pudendal A.", possibleAnswers: ["Superior gluteal A.", "Lateral sacral A.", "Iliolumbar A.", "Internal pudendal A."]))

        list.append(Question(text: "What becomes the femoral artery?", correctAnswer: "External iliac A.", possibleAnswers: ["Internal iliac A.", "External iliac A.", "Obturator A.", "Sciatic A."]))

        list.append(Question(text: "Which does not make up the cruciate anastomosis?", correctAnswer: "Superior gluteal A.", possibleAnswers: ["Lateral circumflex femoral A.", "Superior gluteal A.", "Medial cirumflex femoral A.", "First perforating A."]))

        list.append(Question(text: "What is the most SIGNIFICANT blood supply to the hip joint?", correctAnswer: "Medial circumflex femoral A.", possibleAnswers: ["Medial circumflex femoral A.", "Lateral circumflex femoral A.", "Inferior gluteal A.", "Artery to ligament of the head of femur"]))

        list.append(Question(text: "The ligament to the ligament to the head of femur arises from with artery?", correctAnswer: "Obturator A.", possibleAnswers: ["Lateral circumflex femoral A.", "Medial circumflex femoral A.", "Internal pudendal A.", "Obturator A."]))

        list.append(Question(text: "Which artery terminates at the adductor hiatus and becomes the popliteal artery?", correctAnswer: "Femoral A.", possibleAnswers: ["Femoral A.", "Sciatic A.", "Peroneal A.", "None of the above"]))

        list.append(Question(text: "How many perforating arteries does the deep femoral artery terminate to?", correctAnswer: "4", possibleAnswers: ["2", "3", "4", "5"]))

        list.append(Question(text: "Which is not a terminating point of the popliteal artery?", correctAnswer: "Anterior tibial recurrent A.", possibleAnswers: ["Anterior Tibial A.", "Posterior tibial A.", "Anterior tibial recurrent A.", "All of the above are terminating points"]))

        list.append(Question(text: "The peroneal artery is a branch of which artery?", correctAnswer: "Posterior tibial A.", possibleAnswers: ["Anterior Tibial A.", "Posterior tibial A.", "Anterior tibial recurrent A.", "Posterior tibial recurrent A."]))

        list.append(Question(text: "Which is a branch of the peroneal artery?", correctAnswer: "All of the above", possibleAnswers: ["Perforating branch", "Communicating branch", "Posterior lateral malleolar branches", "All of the above"]))

        list.append(Question(text: "Which supplies blood to the talus?", correctAnswer: "All of the above", possibleAnswers: ["Anterior tibial A.", "Posterior tibial A.", "Peroneal A.", "All of the above"]))

        list.append(Question(text: "Medial and lateral tarsal arteries are from which artery?", correctAnswer: "Dorsalis pedis A.", possibleAnswers: ["Dorsalis pedis A.", "Posterior Tibial A.", "Anterior tibial A.", "Peroneal A."]))

        list.append(Question(text: "The first proximal perforating artery and the first dorsal metatarsal artery are termiantion points for which artery?", correctAnswer: "Dorsalis pedis A.", possibleAnswers: ["Dorsalis pedis A.", "Medial plantar A.", "Posterior tibial A.", "Posterior medial malleolar A."]))

        list.append(Question(text: "Where do the second, third, and fourth dorsal metatarsal arteries arise from?", correctAnswer: "Arcuate A.", possibleAnswers: ["Dorsalis pedis A.", "Arcuate A.", "Posterior tibial A.", "Lateral plantar A."]))

        list.append(Question(text: "Which does not form posterior perforating arteries?", correctAnswer: "1st dorsal metatarsal A.", possibleAnswers: ["1st dorsal metatarsal A.", "2nd dorsal metatarsal A.", "3rd dorsal metatarsal A.", "4th dorsal metatarsal A."]))

        list.append(Question(text: "The medial and lateral plantar arteries arise from which artery?", correctAnswer: "Posterior tibial A.", possibleAnswers: ["Anterior tibial A.", "Posterior tibial A.", "Deep peroneal A.", "Superficial peroneal A."]))

        list.append(Question(text: "Which muscle gets blood supply from the medial plantar artery?", correctAnswer: "All of the above", possibleAnswers: ["Abductor hallucis", "Flexor digitorum brevis", "First dorsal interosseous", "All of the above"]))

        list.append(Question(text: "The deep plantar arch forms which arteries?", correctAnswer: "Plantar metatarsal A.", possibleAnswers: ["Dorsal metatarsal A.", "Plantar metatarsal A.", "Medial plantar A.", "Lateral plantar A."]))

        list.append(Question(text: "Which arteries have venae comitantes?", correctAnswer: "None of the above", possibleAnswers: ["Popliteal A.", "Dorsal digital A.", "Deep femoral A.", "None of the above"]))
        
        list.append(Question(text: "Which arteries are superficial to deep fascia?", correctAnswer: "Proper dorsal digital A.", possibleAnswers: ["Lateral plantar A.", "Medial plantar A.", "Proper dorsal digital A.", "All of the above"]))

        list.append(Question(text: "The dorsal venous arch of the foot drains medially into", correctAnswer: "Great saphenous vein", possibleAnswers: ["Great saphenous vein", "Lesser saphenous vein", "Lateral marginal vein", "All of the above"]))

        list.append(Question(text: "Direction of flow in the venous system for lower extermities is", correctAnswer: "Superficial to deep", possibleAnswers: ["Deep to Superficial", "Superficial to deep", "Deep only", "Superficial only"]))

        list.append(Question(text: "Which lymph nodes are most likely infected if an infection travels through the lateral marginal vein?", correctAnswer: "Popliteal lymph nodes", possibleAnswers: ["Axillary lymph nodes", "Deep inguinal lymph nodes", "Superficial Inguinal lymph nodes", "Popliteal lymph nodes"]))

    }
}
}
