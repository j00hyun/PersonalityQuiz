//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Park JooHyun on 2022/04/25.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultNameLabel: UILabel!
    @IBOutlet var resultTitleLabel: UILabel!
    @IBOutlet var resultDescriptionLabel: UILabel!
    @IBOutlet var resultImageView: UIImageView!
    
    var responses: [Answer]
    
    // coder: UIKit에 의해 제공, Storyboard에 정의된 정보로부터 view controller를 초기화하는데 사용
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    // custom initializer를 만들 때, superclass에서 정의한 required initializer를 넣어야 한다.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult() {
        // cat type 빈도수 count해서 딕셔너리에 저장
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        
        // 딕셔너리 빈도수 높은 순서대로 정렬한 튜플 리스트 반환 후 가장 빈도수 큰 cat type 저장
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        // 화면에 설명 띄우기
        resultNameLabel.text = mostCommonAnswer.name
        resultTitleLabel.text = mostCommonAnswer.title
        resultDescriptionLabel.text = mostCommonAnswer.description
        resultImageView.image = UIImage(named: mostCommonAnswer.rawValue)
    }

}
