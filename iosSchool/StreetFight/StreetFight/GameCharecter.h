//
//  GameCharecter.h
//  StreetFight
//
//  Created by celeste on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * @discussion 게임캐릭터 공통 property
 * @author KimJihun
 * @version 0.1
 */
@interface GameCharecter : NSObject

/*! @brief  캐릭터 이름 */
@property NSString *charecterName;
/*! @brief  캐릭터 체력 */
@property NSInteger health;
/*! @brief  캐릭터 마나 */
@property NSInteger mana;
/*! @brief  캐릭터 기술 */
@property NSString *skill;
/*! @brief  캐릭터 기술 데미지 */
@property NSInteger skillDamage;
/*! @brief  캐릭터 물리공격력 */
@property NSInteger physicalPower;
/*! @brief  캐릭터 마법공격력 */
@property NSInteger defensive;


/*!
 * @discussion 물리공격력
 * @param damage 데미지
 * @return self
 */
- (id)physicalAttack:(NSInteger)damage;
/*!
 * @discussion 물리공격력
 * @param damage 데미지
 * @return self
 */
- (id)magicalAttack:(NSInteger)damage;
/*!
 * @discussion 마법공격력
 * @param anemy 적
 * @return self
 */
- (id)skillTo:(NSString *)anemy;
/*!
 * @discussion 스킬대상
 * @param anemy 적
 * @return self
 */
- (id)skillDamage:(NSInteger)anemy;
/*!
 * @discussion 스킬데이밎
 * @param anemy 적 damage 데미지
 * @return self
 */
- (id)skillTo:(NSString *)anemy skillDamage:(NSInteger)damage;
/*!
 * @discussion 물리공격력
 * @param damage 데미지 defensive 방어력
 * @return self
 */
- (id)physicalAttack:(NSInteger)damage defensive:(NSInteger)defensive;




@end
