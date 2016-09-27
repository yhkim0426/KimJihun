//
//  Chicken.h
//  StructureExample
//
//  Created by celeste on 2016. 9. 19..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chicken : NSObject


@property id recipe;
- (id)friedChicken;
- (id)spicyChicken;
- (id)garlicChicken;


@property id sideMenu;
- (id)potatoChips;
- (id)ChickenSalad;
- (id)soju;

@end
