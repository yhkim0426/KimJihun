//
//  Wizard.h
//  StructureExample
//
//  Created by celeste on 2016. 9. 19..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wizard : NSObject

@property id mana;
@property id spell;
@property id intelligence;
@property id naturePower;
@property id summonGauge;


- (id)fireBall;
- (id)frozenArrow;
- (id)lightningAttack;
- (id)summonMonster;
- (id)telleport;


@end
