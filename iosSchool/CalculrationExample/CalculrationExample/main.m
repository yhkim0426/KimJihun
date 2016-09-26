//
//  main.m
//  CalculrationExample
//
//  Created by celeste on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculrationSubject.h"
#import "DimensionalShapes.h"

int main(int argc, const char * argv[]) {
    
    
    CalculrationSubject *cal = [[CalculrationSubject alloc] init];

    [cal addScore:100];
    [cal average];
    
    
    DimensionalShapes *shape = [[DimensionalShapes alloc] init];
    shape.pi = 3.14;
    
    [shape squareArea:4];
    [shape rectangleArea:4 width:5];
    [shape rectanglePrimeter:4 width:5];
    [shape circleArea:1 pi:shape.pi];
    [shape circlePrimeter:2 pi:shape.pi];
    [shape triangleArea:7 height:12];
    [shape trapezoid:23 base:3 top:7];
    [shape cube:16];
    [shape rectangularSolid:5 width:6 length:7];
    [shape circuralCylender:shape.pi radius:4 height:8];
    [shape sphere:shape.pi radius:5];
    [shape cone:shape.pi radius:4 height:2];
    
    return 0;
}
