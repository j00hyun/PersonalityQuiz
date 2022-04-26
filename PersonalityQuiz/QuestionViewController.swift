//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Park JooHyun on 2022/04/25.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet var answerStackView: UIStackView!
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var answerButton1: UIButton!
    @IBOutlet var answerButton2: UIButton!
    @IBOutlet var answerButton3: UIButton!
    @IBOutlet var answerButton4: UIButton!
    
    @IBOutlet var questionProgressView: UIProgressView!
    
    var questions: [Question] = [
        Question(
            text: """
                오늘은 새로운 사람들과 모임 약속이 있는 날!
                근데, 옷을 고르다가 그만 약속에 늦어버렸다.
                나 빼고 전부 이미 도착한 상황.
                택시에 내려 할 행동은?
                """,
            answers: [
                Answer(text: "뭐 조금 늦은 것 가지고~\n당당하게 걸어 약속 장소로 들어간다.", type: .Bengal),
                Answer(text: "들어갔는데 사람들이 모두 나만 쳐다보면 어떡하지?\n최대한 살금살금 들어간다.", type: .RussianBlue),
                Answer(text: "이왕 늦은거 화장실로 가서\n입은 옷이 괜찮은지 확인한다.", type: .KoreanShorthair),
                Answer(text: "왜 늦었냐 하면 뭐라고 하지..?\n둘러댈 이유를 고민한다.", type: .TurkishAngora)
            ]
        ),
        
        Question(
            text: """
                어느 날 길을 걷던 중, 익숙한 실루엣을 발견했다.
                나랑 제일 친한 친구 애인이잖아?
                엥? 근데 옆에 쟨 누구지?
                뭐야, 다른 사람이랑 손을 잡고 있는데??
                어쩌지..?
                """,
            answers: [
                Answer(text: "미친거 아니야?\n바로 달려가서 친구 애인의 뺨을 후려갈긴다.", type: .Siamese),
                Answer(text: "일단 마음을 가다듬고 증거 사진을 남겨놓는다.\n이제 어떻게 해야할지는 천천히 생각해보자.", type: .TurkishAngora),
                Answer(text: "당장 이 사실을 알려야해!\n친구에게 바로 전화를 때린다.", type: .ScottishFold),
                Answer(text: "설마..? 에이, 다른 이유가 있겠지.\n둘 사이를 지나쳐 갈길을 간다.", type: .RussianBlue)
            ]
        )
    ]
    
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        let currentQuestion = questions[questionIndex]
        let currentAnswer = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "# \(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        answerButton1.setTitle(currentAnswer[0].text, for: .normal)
        answerButton2.setTitle(currentAnswer[1].text, for: .normal)
        answerButton3.setTitle(currentAnswer[2].text, for: .normal)
        answerButton4.setTitle(currentAnswer[3].text, for: .normal)
        
        answerButton1.titleLabel?.textAlignment = .center
        answerButton2.titleLabel?.textAlignment = .center
        answerButton3.titleLabel?.textAlignment = .center
        answerButton4.titleLabel?.textAlignment = .center
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case answerButton1:
            answersChosen.append(currentAnswers[0])
        case answerButton2:
            answersChosen.append(currentAnswers[1])
        case answerButton3:
            answersChosen.append(currentAnswers[2])
        case answerButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        
        nextQuestion()
    }
    
    func nextQuestion() {
        
    }

}
