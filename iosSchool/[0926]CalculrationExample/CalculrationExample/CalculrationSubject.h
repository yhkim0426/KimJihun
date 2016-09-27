//
//  CalculrationSubject.h
//  CalculrationExample
//
//  Created by celeste on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>


/**

 1. 하검 계산기 클래스 만들기
 2. property 만들기
 3. method 만들기
  - 과목 점수 더하는 함수
  - 평균 구하는 함수

 */
@interface CalculrationSubject : NSObject

@property NSInteger totalScore;
@property NSInteger subjectCount;

- (void) addScore:(NSInteger)score;
- (CGFloat)average;

@end
