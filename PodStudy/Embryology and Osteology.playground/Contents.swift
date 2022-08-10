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
        list.append(Question(text: "When does the limb bud appear?", correctAnswer: "Week 4", possibleAnswers: ["Week 3", "Week 4", "Week 6", "Week 8"]))
        
        list.append(Question(text: "When do limb buds flatten during gestation?", correctAnswer: "Week 5", possibleAnswers: ["Week 4", "Week 5", "Week 6", "Week 8"]))

        list.append(Question(text: "When do lower limb buds first rotate?", correctAnswer: "Week 6", possibleAnswers: ["Week 2", "Week 5", "Week 6", "Week 10"]))

        list.append(Question(text: "When do lower limb buds undergo their second rotation?", correctAnswer: "", possibleAnswers: ["Week 5", "Week 6", "Week 8", "Week 10"]))

        list.append(Question(text: "Whih gives rise to bones, ligaments, and dermis??", correctAnswer: "Mesoderm", possibleAnswers: ["Epiderm", "Mesoderm", "Ectoderm", "None of the above"]))

        list.append(Question(text: "Which givea rise to nerves, hair, and nails?", correctAnswer: "Ectoderm", possibleAnswers: ["Epiderm", "Mesoderm", "Ectoderm", "None of the above"]))

        list.append(Question(text: "At 8 weeks of gestation, the foot is in what position?", correctAnswer: "Plantarflexed and adducted", possibleAnswers: ["Plantarflexed and adducted", "Plantarflexed and abducted", "Dorsiflex and adducted", "Dorsiflex and abducted"]))

        list.append(Question(text: "Which thigh muscle compartments form from pre-axial?", correctAnswer: "Posterior and medial", possibleAnswers: ["Posterior and medial", "Posterior and lateral", "Anterior and medial", "Anterior and lateral"]))

        list.append(Question(text: "Which thigh muscle compartments form from post-axial or dorsally?", correctAnswer: "Anterior and lateral", possibleAnswers: ["Posterior and medial", "Posterior and lateral", "Anterior and medial", "Anterior and lateral"]))

        list.append(Question(text: "Pre-axial muscles are innervated by", correctAnswer: "Anterior division", possibleAnswers: ["Anterior division", "Posterior division", "Lateral division", "Medial division"]))

        list.append(Question(text: "Post-axial muscles are innervated by", correctAnswer: "Posterior division", possibleAnswers: ["Anterior division", "Posterior division", "Lateral division", "Medial division"]))

        list.append(Question(text: "Which is not a characteristic of club foot?", correctAnswer: "Dorsiflexed", possibleAnswers: ["Inverted", "Plantarflexed", "Dorsiflexed", "All of the above are characteristics"]))

        list.append(Question(text: "What is in the bony pelvis but not the pelvic girdle?", correctAnswer: "Sacrum and coccyx", possibleAnswers: ["Pubis", "Ischium", "Ilium", "Sacrum and coccyx"]))

        list.append(Question(text: "Which pelvis bone fuses first?", correctAnswer: "Pubis", possibleAnswers: ["Pubis", "Ischium", "Ilium", "Sacrum and coccyx"]))

        list.append(Question(text: "Which bone contains anterior, posterior, and ifnerior gluteal lines?", correctAnswer: "Ilium", possibleAnswers: ["Pubis", "Ischium", "Ilium", "Sacrum and coccyx"]))

        list.append(Question(text: "What ligament attaches to the pubic tubercle?", correctAnswer: "Inguinal ligament", possibleAnswers: ["Sacraliliac ligament", "Iliofemoral ligament", "Pubofemoral ligament", "Inguinal ligament"]))

        list.append(Question(text: "What bone is not involved in the obturator foramen?", correctAnswer: "Ilium", possibleAnswers: ["Pubis", "Ischium", "Ilium", "All of the above are involved"]))

        list.append(Question(text: "Which secondary ossification center of the femur forms first?", correctAnswer: "Femoral condyles", possibleAnswers: ["Femoral condyles", "Femoral Head", "Greater trochanter", "Lesser Trochanter"]))

        list.append(Question(text: "The femoral angle of torsion is made of", correctAnswer: "Femoral neck and condyles", possibleAnswers: ["Femoral shaft and knee", "Femoral shaft and ground", "Femoral neck and shaft", "Femoral neck and condyles"]))

        list.append(Question(text: "When does the primary center of ossification appear for the femur?", correctAnswer: "Week 7", possibleAnswers: ["Week 5", "Week 7", "Week 10", "Week 12"]))

        list.append(Question(text: "Which secondary ossification center is present since birth?", correctAnswer: "Proximal tibial epiphysis", possibleAnswers: ["Proximal tibial epiphysis", "Distal tibial epiphysis", "Distal fibular epiphysis", "Proximal fibular epiphysis"]))

        list.append(Question(text: "Which angle can describe in-toeing or out-toeing?", correctAnswer: "Tibial torsion", possibleAnswers: ["Femoral incliantion angle", "Femoral decliantion angle", "Tibial torsion", "All of the above"]))

        list.append(Question(text: "Gerdy's tubercle is the site of insertion for", correctAnswer: "Iliotibial band", possibleAnswers: ["Tensor fascia latae", "Sartorius", "Gluteus maximus", "Iliotibial band"]))

        list.append(Question(text: "Which bone is not included in the transverse arch of the foot?", correctAnswer: "Navicular", possibleAnswers: ["Cuboid", "Cuneiforms", "Navicular", "All of the above are involved"]))

        list.append(Question(text: "Which muscle tendon goes between the posterior tubercles of the talus?", correctAnswer: "Flexor hallucis longus", possibleAnswers: ["Tibialis posterior", "Peroneus longus", "Flexor Digitorum longus", "Flexor hallucis longus"]))

        list.append(Question(text: "The peroneal sulcus is found on which bone?", correctAnswer: "Cuboid", possibleAnswers: ["Talus", "Navicular", "Calcaneous", "Cuboid"]))
        
        list.append(Question(text: "Which bone is the os tibiale externum an acessory bone for?", correctAnswer: "Navicular", possibleAnswers: ["Talus", "Navicular", "Calcaneous", "Cuboid"]))
        
        list.append(Question(text: "Which bone ossifies last?", correctAnswer: "Sesamoids", possibleAnswers: ["Navicular", "Talus", "Sesamoids", "Calcaneus"]))
        
    }
}
    
}
