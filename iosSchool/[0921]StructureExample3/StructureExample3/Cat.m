//
//  Cat.m
//  StructureExample3
//
//  Created by celeste on 2016. 9. 21..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Cat.h"
#import "Dog.h"

@implementation Cat


- (id)cryTo:(Dog *)dog {
    
    NSInteger realAge = dog.age + self.age;
    NSLog(@"저의 나이는 %ld입니다.", realAge);
    return nil;
}

@end
