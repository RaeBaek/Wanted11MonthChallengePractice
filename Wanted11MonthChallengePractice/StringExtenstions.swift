//
//  StringExtenstions.swift
//  Wanted11MonthChallengePractice
//
//  Created by 백래훈 on 2022/12/02.
//

import Foundation

postfix operator ~~

extension String {
    // extension을 활용하여 lastCharacter() 메서드 추가
    func lastCharacter() -> Character {
        let n = self.last ?? Character("")
        print(n)
        return n
    }
    
    // 매개변수가 없다면 lastCharacter2 연산 프로퍼티를 활용
    var lastCharacter2: Character {
        let n = self.last ?? Character("")
        print(n)
        return n
    }
    
    // 사용자 정의 연산 Custom Operator
    static postfix func ~~ (string: Self) -> Character {
        let n = string.last ?? Character("")
        print(n)
        return n
    }
}
