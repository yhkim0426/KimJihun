//
//  main.m
//  StructureExample3
//
//  Created by celeste on 2016. 9. 21..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"

int main(int argc, const char * argv[]) {
    
    
    Warrior *jack = [[Warrior alloc] init];
    jack.name = @"전사로 태어났지만 검소한 녀석 but Handsome"; // => [[NSString alloc] initWithUTF8String:"전사"]
    jack.health = 200;
    jack.mana = 50;
    jack.physicalPower = -10;
    jack.magicalPower = -124.4;
    jack.isDead = NO;
    
    
    
    
    
    
    /*! @brief 불리언 타입 : 김지훈은 잘생겼는가? YES */
    BOOL isJihunKimHandsome = YES;
    BOOL compareResult = NO;
    
    //정수타입, 값타입, 벨류타입
    //부호가 있는 정수타입
    NSInteger signedInteger = -100;
    NSInteger twoHundred = 200 ;
    
    //부호가 없는 정수타입
    NSUInteger unsignedInteger = 100;
    NSUInteger threeHundred = 300;
    
    compareResult = (twoHundred < threeHundred);
    
    //값타입의 경우 각각의 다른 번지에 매핑된 결과들을 가지고 출력
    NSInteger anotherNumber = twoHundred;
    anotherNumber = 1000;
    
    
    //객체형 숫자 타입
    //레퍼런스 타입, 참조타입
    NSNumber *someNumberObject = @100; // @100 => [[NSNumber alloc] initWithInt:100];
    NSNumber *anotherNumberVariable = someNumberObject;
    
    //실수형타입
    CGFloat height = 174.1;
    CGFloat Wheight = 81.8;
    
    //한 글자 표현 문자 타입
    char someCharacter = 'a';
        
    id anyObject = @100;
    anyObject = [[NSObject alloc] init];
    
    return 0;
}
