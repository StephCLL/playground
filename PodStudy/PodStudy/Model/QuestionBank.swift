//
//  QuestionBank.swift
//  PodStudy
//
//  Created by Stephen Chen on 5/22/19.
//  Copyright © 2019 SC. All rights reserved.
//

import Foundation

//store all the questions that will be used in the app.

class QuestionBank {
    var list = [Question]()
    
    init(){
        
        // Add the Question to the list of questions
        list.append(Question(text: "Which drug is an mu receptor antagonist?", correctAnswer: "naloxone", possibleAnswers: ["naloxone", "morphone", "codeine", "fentandyl"]))
        
        list.append(Question(text: "Which drug does not have produce active metabolites?", correctAnswer: "fentandyl", possibleAnswers: ["naloxone", "morphone", "codeine", "fentandyl"]))
        
        list.append(Question(text: "What is the major action of opiods?", correctAnswer: "All of the above", possibleAnswers: ["close pre-synaptic voltage gated Ca channels", "Open post-synaptic K+ channels", "Block neurotransmitter release", "All of the above"]))
        
        list.append(Question(text: "Which opioid does not develop tolerance?", correctAnswer: "nalbuphine", possibleAnswers: ["Morphine", "nalbuphine", "naloxone", "fentandyl"]))
        
        list.append(Question(text: "Which opioid is a synthetic morphine?", correctAnswer: "levorphanol", possibleAnswers: ["methadone", "merperidine", "levorphanol", "fentandyl"]))
        
        list.append(Question(text: "Which drug inhibits 5HT reuptake and is a weak mu agonist?", correctAnswer: "tramadol", possibleAnswers: ["tramadol", "tapentadol", "nalbuphine", "dextromethorphan"]))
        
        list.append(Question(text: "Which drug inhibits NE reuptake and is a modest mu agonist?", correctAnswer: "tapentadol", possibleAnswers: ["tramadol", "tapentadol", "nalbuphine", "dextromethorphan"]))
        
        list.append(Question(text: "What receptor is ketamine and phencyclidine an antagonist for?", correctAnswer: "NMDA", possibleAnswers: ["GABA A", "GABA B", "NMDA", "Ach receptors"]))
        
        list.append(Question(text: "Which receptor does Gamma hydroxybutyric acid act on?", correctAnswer: "GABA B", possibleAnswers: ["GABA A", "GABA B", "NMDA", "Ach receptors"]))
        
        list.append(Question(text: "Which drug is a synthetic opioid?", correctAnswer: "methadone", possibleAnswers: ["rimonabant", "acamprosate", "varenicline", "methadone"]))
        
        list.append(Question(text: "Which drug is a cannabinoid receptor inverse agonist?", correctAnswer: "rimonabant", possibleAnswers: ["rimonabant", "acamprosate", "varenicline", "methadone"]))
        
        list.append(Question(text: "Which drug is an NMDA antagonist?", correctAnswer: "acamprosate", possibleAnswers: ["rimonabant", "acamprosate", "varenicline", "methadone"]))
        
        list.append(Question(text: "Which drug is a nicotine receptor partial agonist?", correctAnswer: "varenicline", possibleAnswers: ["rimonabant", "acamprosate", "varenicline", "methadone"]))
        
        list.append(Question(text: "Which drug is a megakaryote growth factor?", correctAnswer: "oprelvekin", possibleAnswers: ["oprelvekin", "filgrastin", "folicin", "deferoxamine"]))
        
        list.append(Question(text: "Which drug is a iron chelator?", correctAnswer: "deferoxamine", possibleAnswers: ["oprelvekin", "filgrastin", "folicin", "deferoxamine"]))
        
        list.append(Question(text: "Which drug is a myeloid growth factor?", correctAnswer: "filgrastin", possibleAnswers: ["oprelvekin", "filgrastin", "folicin", "deferoxamine"]))
        
        list.append(Question(text: "Which drug reverses the effects of heparin?", correctAnswer: "protamine sulfate", possibleAnswers: ["Asprin", "enoxaparin", "protamine sulfate", "fondaparinux"]))
        
        list.append(Question(text: "Which drug inhibits ADP?", correctAnswer: "clopidogrel", possibleAnswers: ["aspirin", "abciximab", "protamine", "clopidogrel"]))
        
        list.append(Question(text: "Which drug blocks IIb/IIIa receptors?", correctAnswer: "abciximab", possibleAnswers: ["aspirin", "abciximab", "protamine", "clopidogrel"]))
        
        list.append(Question(text: "Which drug inhibits prostaglandin synthesis (thromboxane A2)?", correctAnswer: "aspirin", possibleAnswers: ["aspirin", "abciximab", "protamine", "clopidogrel"]))
        
        list.append(Question(text: "Which statin drug can you use when taking ketoconazole?", correctAnswer: "rosuvastatin", possibleAnswers: ["atorvastatin", "fenofibrate", "rosuvastatin", "simvastatin"]))
        
        list.append(Question(text: "Which statin drug is a prodrug?", correctAnswer: "simvastatin", possibleAnswers: ["atorvastatin", "fenofibrate", "rosuvastatin", "simvastatin"]))
        
        list.append(Question(text: "Which drug is an interstinal sterol absorption inhibitor?", correctAnswer: "ezetimbe", possibleAnswers: ["ezetimbe", "cholestyramine", "fenofibrate", "simvastatin"]))
        
        list.append(Question(text: "Which is the only drug to lower Lp(a) levels?", correctAnswer: "Niacin", possibleAnswers: ["ezetimbe", "cholestyramine", "Niacin", "simvastatin"]))
        
        list.append(Question(text: "Which drug is a class 1C sodium channel blocker and used for severe ventricular arrhythmias?", correctAnswer: "flecainide", possibleAnswers: ["sotalol", "procanamide", "mexiletine", "flecainide"]))
        
        list.append(Question(text: "Which drug is a potassium channel blocker?", correctAnswer: "sotalol", possibleAnswers: ["sotalol", "procanamide", "mexiletine", "flecainide"]))
        
        list.append(Question(text: "Which drug has an ADR that includes cinchonism?", correctAnswer: "quinidine", possibleAnswers: ["disopyramide", "quinidine", "lidocaine", "procainamide"]))
        
        list.append(Question(text: "Which drug can cause antimuscarinic effects?", correctAnswer: "disopyramide", possibleAnswers: ["disopyramide", "quinidine", "lidocaine", "procainamide"]))
        
        list.append(Question(text: "Which drug can cause gray-blue skin as an ADR?", correctAnswer: "amiodarone", possibleAnswers: ["sotalol", "amiodarone", "verapamil", "diltiazem"]))
    
        list.append(Question(text: "Which drug can treat torsades de pointes?", correctAnswer: "Magnesium", possibleAnswers: ["Calcium", "Potassium", "Adenosine", "Magnesium"]))
        
        list.append(Question(text: "Which histamine receptor is in presynaptic autoreceptors?", correctAnswer: "H3", possibleAnswers: ["H1", "H2", "H3", "H4"]))
        
        list.append(Question(text: "Which histamine receptor is not in the brain?", correctAnswer: "H4", possibleAnswers: ["H1", "H2", "H3", "H4"]))
        
        list.append(Question(text: "Which histamine receptor acts on smooth muscles?", correctAnswer: "H1", possibleAnswers: ["H1", "H2", "H3", "H4"]))
        
        list.append(Question(text: "Which drug can be used to treat the motor disorders of parkinson's disease?", correctAnswer: "diphenhydramine", possibleAnswers: ["doxylamine", "diphenhydramine", "loratadine", "fexofenadine"]))
        
        list.append(Question(text: "Which drug can be used to prevent nausea for women in their first trimester?", correctAnswer: "doxylamine", possibleAnswers: ["doxylamine", "diphenhydramine", "loratadine", "fexofenadine"]))
        
        list.append(Question(text: "Which drug is not a serotonin agonist?", correctAnswer: "cimetidine", possibleAnswers: ["sumatriptan", "lorcaserin", "cimetidine", "almotriptan"]))
        
        list.append(Question(text: "Which drug is a H2 antihistamine?", correctAnswer: "cimetidine", possibleAnswers: ["cimetidine", "cetirizine", "loratadine", "lorcaserin"]))
        
        list.append(Question(text: "Which ergot alkaloid is a uteroselective drug?", correctAnswer: "ergonovine", possibleAnswers: ["ergotamine", "ergonovine", "LSD", "almotriptan"]))
        
        list.append(Question(text: "Which drug is an ACE Inhibitor?", correctAnswer: "captopril", possibleAnswers: ["valsartan", "losartan", "captopril", "propanolol"]))
        
        list.append(Question(text: "What is the antagonist for bradykinin receptors?", correctAnswer: "Icatibant", possibleAnswers: ["kallidin", "Aliskiren", "losartan", "Icatibant"]))
        
        list.append(Question(text: "Which drug is a natriuretic peptide?", correctAnswer: "nesiritide", possibleAnswers: ["icatibant", "conivaptan", "nesiritide", "aliskieren"]))
        
        list.append(Question(text: "Which drug is a renin inhibitor?", correctAnswer: "aliskieren", possibleAnswers: ["icatibant", "conivaptan", "nesiritide", "aliskieren"]))
        
        list.append(Question(text: "Which drug is an antagonist for vasopressin and causes vasodilation?", correctAnswer: "conivaptan", possibleAnswers: ["icatibant", "conivaptan", "nesiritide", "aliskieren"]))
        
        list.append(Question(text: "What is nitric oxides main role in the CNS?", correctAnswer: "increase neurotransmitter release", possibleAnswers: ["Inhibit platelet aggregation", "Vasodilation", "induce iNOS", "increase neurotransmitter release"]))
        
        list.append(Question(text: "Which drug is primarily used to treat angina?", correctAnswer: "Nitroglycerin", possibleAnswers: ["Nitroglycerin", "isosorbide dinitrate", "amyl nitrite", "Sodium Nitroprusside"]))
        
        list.append(Question(text: "Which drug is primarily used to treat severe hypertension?", correctAnswer: "Sodium Nitroprusside", possibleAnswers: ["Nitroglycerin", "isosorbide dinitrate", "amyl nitrite", "Sodium Nitroprusside"]))
        
        list.append(Question(text: "Which drug binds IgE?", correctAnswer: "omalizumab", possibleAnswers: ["omalizumab", "theophylline", "tiotropium", "ipratropium"]))
        
        list.append(Question(text: "Which drug is a methylxanthine?", correctAnswer: "theophylline", possibleAnswers: ["omalizumab", "theophylline", "tiotropium", "ipratropium"]))
        
        list.append(Question(text: "Which drug is a long acting antimuscarinic?", correctAnswer: "tiotropium", possibleAnswers: ["omalizumab", "theophylline", "tiotropium", "ipratropium"]))
        
        list.append(Question(text: "Which drug is a non-selective beta blocker?", correctAnswer: "epinephrine", possibleAnswers: ["metaproterenol", "salmeterol", "albuterol", "epinephrine"]))
        
        list.append(Question(text: "Which drug is a non-selective beta blocker?", correctAnswer: "isoproterenol", possibleAnswers: ["metaproterenol", "salmeterol", "albuterol", "isoproterenol"]))
        
    }
}
