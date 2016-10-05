//
//  WhileClass.m
//  [1004]WhileExample
//
//  Created by celeste on 2016. 10. 4..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "WhileClass.h"

@implementation WhileClass


+ (void)whileSupply:(NSInteger)num {
    
    NSInteger index = 1;
    while (index < 10) {
        NSLog(@"%ld * %ld = %ld", num, index, num * index);
        index++;
    }
    NSLog(@"*** while *** 구구단이 끝났습니다.");
}


+ (void)forSupply:(NSInteger)num {
    
    for (NSInteger i=1; i<10; i++) {
        NSLog(@"%ld * %ld = %ld", num, i, num * i);
    }
    NSLog(@"*** for *** 구구단이 끝났습니다.");

    
}

+ (void)factorial:(NSInteger)num {
    
    NSInteger factorial=1;
    for (NSInteger i = 1; i<=num; i++) {
        factorial *= i;
    }
    NSLog(@"factorial = %ld",factorial);
    NSLog(@"*** factorial *** 끝났습니다.");
}


+ (void)triangularNum:(NSInteger)num {
    
    NSInteger triangularNumber = 0;
    for(NSUInteger i=1; i<=num; i++) {
        triangularNumber += i;
    }
    NSLog(@"triangularNum : %ld", triangularNumber );
    NSLog(@"*** triangularNum *** 끝났습니다.");
}

+ (void)addAllNum:(NSInteger)num {
    
    NSInteger sum = 0;
    NSInteger x = 0;
            
    while(num > 0) {
        x = num - (NSInteger)(num*0.1f) * 10;
        NSLog(@"*********");
        NSLog(@"%ld",(NSInteger)(num*0.1f));

        sum += x;
        num *= 0.1f;
    }
     NSLog(@"addAllNum : %ld", sum );
}

//+ (void)game369:(NSInteger)num {
//    
//    for (NSInteger i =1; i<=num; i++){
//        
//        if(i % 3 == 0){
//    
//            i = [NSString stringWithFormat:@"%@", 1];
//        }
//        
//        NSLog(@"%ld",i);
//    }
//}

- (NSString *)titleWithData:(NSDictionary *)data {
    
    if (data != NULL) {
        NSDictionary *album_info = [data objectForKey:@"album_info"];
        NSString *title = [album_info objectForKey:@"title"];
        return title;
    }
    return nil;
}


- (NSArray *)songTitles:(NSDictionary *)data {
    
    if (data != NULL) {

        NSMutableArray *songs = [[NSMutableArray alloc] init];
        
        NSArray *songTitles = [data objectForKey:@"song_list"];
        for (NSDictionary *song in songTitles) {
            [songs addObject:[song objectForKey:@"name"]];
        }
        return songs;
    }
    return nil;
}


@end
