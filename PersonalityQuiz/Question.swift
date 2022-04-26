//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Park JooHyun on 2022/04/25.
//

import Foundation

struct Question {
    var text: String
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: CatType
}

enum CatType: String {
    case RussianBlue = "러시안 블루"
    case ScottishFold = "스코티쉬 폴드"
    case TurkishAngora = "터키쉬 앙고라"
    case KoreanShorthair = "코리안 숏헤어"
    case Siamese = "샴"
    case Bengal = "벵갈"
    
    var title: String {
        switch self {
        case .RussianBlue:
            return "오직 한사람만 바라본다옹!"
        case .ScottishFold:
            return "낯가림? 먹는거냐옹?"
        case .TurkishAngora:
            return "걸어다니는 전자 두뇌!"
        case .KoreanShorthair:
            return "태생부터 관종"
        case .Siamese:
            return "예민보스 질투의 화신"
        case .Bengal:
            return "미친 에너자이저!!"
        }
    }
    
    var description: String {
        switch self {
        case .RussianBlue:
            return "온순하고 조용해 집사들에게 인기가 많은 냥! 사려깊은 성격으로 상대의 감정에 민감하게 반응한다. 낯을 가리는 편으로, 새로운 환경이나 낯선 상대에게는 강한 경계를 보이기도 한다. 하지만, 자신이 좋아하는 상대에게는 끝없는 애정표현과 애교를 보여준다. 나에게 애정표현을 받는다면 영광인줄 알아라옹~"
        case .ScottishFold:
            return "동글동글한 얼굴과 접혀 있는 귀로 귀여운 외모를 가진 냥! 새로운 환경과 사람을 좋아하는 파워 외향냥이다. 순하고 상냥하기까지해서 모든 상대와 스스럼없이 잘 어울리곤 한다. 내가 바로 무리의 인싸냥!?"
        case .TurkishAngora:
            return "유럽인의 마음을 사로잡은 우아한 자태에 섹시한 두뇌를 가진 진정한 뇌섹냥. 고양이 중 가장 영리하고 똑똑하기로 유명하다. 그래서 그런지 잔머리를 잘 굴리는 편. 그 외에도 호기심이 많고 주변을 관찰하는 것을 좋아해 척척박사가 딱 어울린다냥!"
        case .KoreanShorthair:
            return "한국 토종 고양이로 한국 집사들에게 가장 많은 사랑을 받고있는 고양이! '개냥이'의 표본으로 관심을 끌 때까지 강아지처럼 애교를 부리곤 한다. 또한, 활발한 성격으로 관종끼가 다분한 편! 하지만, 너무 많은 관심을 받으면 부끄러워서 도망가곤 한다. 혹시 너, 소심한 관종?"
        case .Siamese:
            return "옛날 옛적 왕족들만 키울 수 있었다는 고양이의 여왕! 태국어로 '달의 다이아몬드'라는 뜻을 가진 샴은 아주 이쁜 눈동자를 갖고 있다. 예민하고 감수성이 풍부하지만 그만큼 외로움을 잘 타 질투심이 강하다. 특히, 집사가 다른 동물이나 아기에게 집중하는 걸 못참는 편! 샴에겐 넘치는 사랑을 줘보는게 어떨까?"
        case .Bengal:
            return "집고양이와 야생의 삵을 교배하여 탄생해 호랑이 같은 무늬가 매력적인 냥! 미친듯한 에너지로 무시무시한 활동력을 갖고 있어 집사를 종종 뻗게 한다. 또한, 호기심도 많아 이곳 저곳을 돌아다니는 것을 좋아한다. 하지만 독립적인 성격으로 구속은 질색하니 조심하자!"
        }
    }
}
