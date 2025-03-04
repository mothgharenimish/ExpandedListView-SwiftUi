//
//  Model.swift
//  ExpandedListView-SwiftUi
//
//  Created by Nimish Mothgare on 18/03/24.
//

import Foundation

struct QueandAns : Identifiable {
    
    let id = UUID()
    let question : String?
    let answer : String?
}


class ViewModel : ObservableObject {
    
    @Published var qusandans : [QueandAns] = [
    
    QueandAns(question: "Whats your name ???", answer: "My name is Nimish Mothghare"),
    QueandAns(question: "Whats your current location ???", answer: "Ahmedabad Gujarat"),
    QueandAns(question: "Whats your favourite Singer ???", answer: "Mohd Rafi and Kumar Sanu"),
    QueandAns(question: "Current Situation of Indian Population ??? ", answer: "India is the most populous country in the world with one-sixth of the world's population. According to UN estimates, India overtook China in having the largest population in the world with a population of 1,425,775,850 at the end of April 2023. 1,425,775,850 (2023 est.) 473.42 people per.km2 (2021 est.)"),
    QueandAns(question: "Current Situation of Software Industry ???", answer: "The integration of AI and machine learning into software development processes is a game changer. AI is changing the way developers approach problem-solving, from automating tedious jobs to improving decision-making abilities in the recent trends in software development."),
    QueandAns(question: "Whats is the current situation of World Population ???", answer: "The world's population is more than three times larger than it was in the mid-twentieth century. The global human population reached 8.0 billion in mid-November 2022 from an estimated 2.5 billion people in 1950, adding 1 billion people since 2010 and 2 billion since 1998."),
    QueandAns(question: "History of IOS App Developement", answer: "The history of iOS development dates back to 2007, when Apple introduced the first iPhone. The original iPhone ran on a version of iOS known as iPhone OS, which was later renamed to iOS. In 2008, Apple introduced the App Store, which allowed developers to create and distribute third-party apps for iOS devices."),
    QueandAns(question: "भारत की प्रथम महिला IAS ऑफिसर कौन थी? जवाब", answer: "अन्ना रामजन मल्होत्रा."),
    QueandAns(question: "मच्छर को सबसे ज्यादा कौन सा रंग पसंद होता है?", answer: "पसीने में लैक्टिक एसिड, यूरिक एसिड तथा अमोनिया जैसे तत्व होते हैं और जो मच्छरों को ज्यादा आकर्षित करते हैं. एक शोध के मुताबिक मच्छरों में देखने और रंगों की पहचान करने की भी क्षमता होती है. ये लाल, नीले, जामुनी तथा काले जैसे रंगों को आसानी से पहचान लेते हैं."),
    QueandAns(question: "सितंबर-अक्टूबर 2021 में होगा आईपीएल", answer: "आईपीएल 2021 के बचे हुए मैच बीसीसीआई की ओर से सितंबर-अक्टूबर 2021 के बीच संयुक्त अरब अमीरात में आयोजित किए जाएंगे. इंडियन प्रीमियर लीग (Indian Premier League) के 14वें सीजन को अधिकारियों ने निलंबित कर दिया था. कई खिलाड़ियों के कोरोना वायरस (COVID-19) से संक्रमित पाए जाने के बाद ये फैसला लिया गया था."),
    QueandAns(question: "रोबोटिक्स का भविष्य क्या है? क्या वो समय भी आएगा जब इंसानों की जगह रोबोट ले लेंगे? ", answer: "इस सवाल का जवाब देते हुए एक कैंडिडेट ने कहा था कि, रोबोटिक्स और आदमी को सोच इमोशनल अलग करती हैं. इंसान ने रोबोट बनाए हैं. रोबोट में इमोशन और चेतना अभी नहीं आई है और आना भी मुश्किल है. इंसानों की जगह लेना रोबोट के लिए मुश्किल है."),
    QueandAns(question: "मोबाइल में इस्तेमाल होने वाले SIM कार्ड का पूरा नाम क्या है?", answer: "सिम का फुल फॉर्म Subscriber Identification Module होता है. सिम कार्ड दिखने में प्लास्टिक के एक टुकड़े जैसा होता है लेकिन इस प्लास्टिक के टुकड़े में इंटीग्रेटेड चिप होता है जो सिर्फ मोबाइल पढ़ सकता है हर सिम कार्ड में unique information, phone number और data store होता है जो हर नेटवर्क के लिए निश्चित है यही आपको कम्युनिकेशन सर्विस इस्तेमाल करने में मदद करता है.")
    
    ]
}
