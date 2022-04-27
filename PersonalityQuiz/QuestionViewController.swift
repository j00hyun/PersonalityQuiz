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
                뭐야, 근데 다른 사람이랑 손을 잡고 있는데
                어쩌지..?
                """,
            answers: [
                Answer(text: "미친거 아니야?\n바로 달려가서 친구 애인의 뺨을 후려갈긴다.", type: .Siamese),
                Answer(text: "일단 마음을 가다듬고 증거 사진을 남겨놓는다.\n이제 어떻게 해야할지는 천천히 생각해보자.", type: .TurkishAngora),
                Answer(text: "당장 이 사실을 알려야해!\n친구에게 바로 전화를 때린다.", type: .ScottishFold),
                Answer(text: "설마..? 에이, 다른 이유가 있겠지.\n둘 사이를 지나쳐 갈길을 간다.", type: .RussianBlue)
            ]
        ),
        
        Question(
            text: """
                여행 계획을 짜기 위해 친구들과 카페에 모였다.
                그런데 각자 다른 의견을 내며 계획에 진전이 없는 상황.
                이 상황에서 내가 할 행동은?
                """,
            answers: [
                Answer(text: "\"자자! 한명씩 의견을 들어보자!\"\n친구들을 중재시킨다.", type: .TurkishAngora),
                Answer(text: "\"흐암.. 그냥 아무데나 가면 안돼?\"\n핸드폰을 만지작거린다.", type: .RussianBlue),
                Answer(text: "\"난 여기가 더 좋은 것 같아!\"\n나도 같이 의견을 내본다.", type: .Siamese),
                Answer(text: "\"얘들아! 저 케이크 맛있겠다~\"\n다른 것으로 친구들의 주위를 끌어본다.", type: .Bengal)
            ]
        ),
        
        Question(
            text: """
                오늘은 애인과 첫데이트를 하는 날!
                밥을 먹고 카페에서 음료를 시킨 후 마주보고 앉았는데..
                연인의 앞니에 고춧가루가 낀걸 발견!
                어떡하지?
                """,
            answers: [
                Answer(text: "서로 부끄러운 상황을 만들지 않기 위해\n모른척 해준다.", type: .Siamese),
                Answer(text: "\"나 잠깐 화장실 다녀올게!\"\n알아차릴 혼자만의 시간을 준다.", type: .RussianBlue),
                Answer(text: "\"있잖아.. 사실 너 이에..\"\n솔직하게 연인에게 말해준다.", type: .KoreanShorthair),
                Answer(text: "\"야! 너 이에 불난거같은데?!\"\n장난을 치며 놀린다.", type: .Bengal)
            ]
        ),
        
        Question(
            text: """
                친구들과 넷플릭스 구독 비용을 아끼기 위해 카톡방을 만들었다.
                근데, 한 친구가 3달 넘게 송금을 하지 않고 있는 상황!
                이럴 때 내가 할 행동은?
                """,
            answers: [
                Answer(text: "\"곧 보내주겠지~\"\n한달 더 기다려본다.", type: .RussianBlue),
                Answer(text: "\"넷플릭스 돈 보내줘~\"\n친구에게 직접 연락한다.", type: .ScottishFold),
                Answer(text: "\"OO야! 왜 돈 안보내?\"\n단톡방에 채팅을 남긴다.", type: .Siamese),
                Answer(text: "\"혹시, OO에게 무슨 일 있어?\"\n다른 친구에게 연락해본다.", type: .KoreanShorthair)
            ]
        ),
        
        Question(
            text: """
                문서 작업 도중, 저장하지 않은 상태에서 갑자기 컴퓨터가 다운됐다!
                공들였던 문서가 다 날라간 상황.
                내가 가장 먼저 할 행동은?
                """,
            answers: [
                Answer(text: "실화...?\n포기하고 침대에 누워버린다.", type: .Bengal),
                Answer(text: "말도안돼.. 분명 어딘가에 저장되어있을꺼야!\n컴퓨터를 마구 뒤져본다.", type: .KoreanShorthair),
                Answer(text: "기억이 생생한 건 바로 지금!\n침착하게 당장 기억나는 것부터 다시 작성한다.", type: .TurkishAngora),
                Answer(text: "슬픔은 나눠야 한다고..!\n친구에게 연락해 이야기하며 위로를 받는다.", type: .ScottishFold)
            ]
        ),
        
        Question(
            text: """
                어느 날, 눈을 떠보니 낯선 곳에 누워있는 나를 발견했다!
                알고보니 몇몇 사람과 무인도에 표류된 상황.
                이 상황에서 내가 할 행동은?
                """,
            answers: [
                Answer(text: "\"안녕하세요 전 OO입니다.\"\n일단 낯선 사람들과 인사를 나눈다.", type: .KoreanShorthair),
                Answer(text: "\"다들 무엇을 하시고 있으셨던 거죠?\"\n무인도에 떨어진 이유에 대해 분석한다.", type: .TurkishAngora),
                Answer(text: "누군가가 우릴 구조해 줄거야!\n울며 백사장에 SOS를 그린다.", type: .Siamese),
                Answer(text: "걱정한다고 누가 구해주나~\n넋을 놓고 자연을 감상한다.", type: .Bengal)
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
        
        // 현재 질문 순서 표시
        navigationItem.title = "# \(questionIndex + 1)"
        
        // 질문 업데이트
        questionLabel.text = currentQuestion.text
        
        // 총 진행량 표시
        questionProgressView.setProgress(totalProgress, animated: true)
        
        // 질문에 대한 선택지 업데이트
        answerButton1.setTitle(currentAnswer[0].text, for: .normal)
        answerButton2.setTitle(currentAnswer[1].text, for: .normal)
        answerButton3.setTitle(currentAnswer[2].text, for: .normal)
        answerButton4.setTitle(currentAnswer[3].text, for: .normal)
        
        answerButton1.titleLabel?.textAlignment = .center
        answerButton2.titleLabel?.textAlignment = .center
        answerButton3.titleLabel?.textAlignment = .center
        answerButton4.titleLabel?.textAlignment = .center
    }
    
    // 선택지 고르면 해당 선택지 기록 후 다음 질문으로 넘어감
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
    
    // 다음 질문 존재하면 다음 질문으로 이동, 없으면 결과 view 이동
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "Results", sender: nil)
        }
    }
    
    // performSegue를 수행할 때, ResultViewController(coder:) 가 아닌 ResultViewController(coder:responses:)를 통해 초기화
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return ResultsViewController(coder: coder, responses: answersChosen)
    }
}
