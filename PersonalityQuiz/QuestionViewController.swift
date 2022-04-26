//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Park JooHyun on 2022/04/25.
//

import UIKit

class QuestionViewController: UIViewController {

    var questions: [Question] = [
        Question(
            text: "오늘은 새로운 사람들과 모임 약속이 있는 날! 근데, 옷을 고르다가 그만 약속에 늦어버렸다. 나 빼고 전부 이미 도착한 상황. 택시에 내려 할 행동은?",
            answers: [
                Answer(text: "뭐 조금 늦은 것 가지고~ 당당하게 걸어 약속 장소로 들어간다.", type: .Bengal),
                Answer(text: "들어갔는데 사람들이 모두 나만 쳐다보면 어떡하지? 최대한 살금살금 들어간다.", type: .RussianBlue),
                Answer(text: "이왕 늦은거 화장실로 가서 입은 옷이 괜찮은지 확인한다.", type: .KoreanShorthair),
                Answer(text: "왜 늦었냐 하면 뭐라고 하지..? 둘러댈 이유를 고민하며 들어간다.", type: .TurkishAngora)
            ]
        ),
        
        Question(
            text: "어느 날 길을 걷던 중, 익숙한 실루엣을 발견했다. 나랑 제일 친한 친구 애인이잖아? 엥? 근데 옆에 쟨 누구지? 뭐야, 다른 사람이랑 손을 잡고 있는데?? 어쩌지..?",
            answers: [
                Answer(text: "미친거 아니야? 바로 달려가서 친구 애인의 뺨을 후려갈긴다.", type: .Siamese),
                Answer(text: "일단 마음을 가다듬고 증거 사진을 남겨놓는다. 이제 어떻게 해야할지는 천천히 생각해보자.", type: .TurkishAngora),
                Answer(text: "당장 이 사실을 알려야해! 친구에게 바로 전화를 때린다.", type: .ScottishFold),
                Answer(text: "설마..? 에이, 다른 이유가 있겠지. 둘 사이를 지나쳐 갈길을 간다.", type: .RussianBlue)
            ]
        )
    ]
    
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
