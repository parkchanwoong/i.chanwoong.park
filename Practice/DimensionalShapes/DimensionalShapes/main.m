//
//  main.m
//  DimensionalShapes
//
//  Created by 박찬웅 on 2017. 1. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dimensional.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //도형나머지 3개 , 상속의 개념 없음
        //A는 넓이 P는 둘레 C는 원의둘레 V는 부피
        Dimensional *squareA = [[Dimensional alloc] init]; 
        Dimensional *squareP = [[Dimensional alloc] init];
        Dimensional *rectangleA = [[Dimensional alloc] init];
        Dimensional *rectangleP = [[Dimensional alloc] init];
        Dimensional *circleA = [[Dimensional alloc] init];
        Dimensional *circleP = [[Dimensional alloc] init];
        Dimensional *triangle = [[Dimensional alloc] init];
        Dimensional *trapezold = [[Dimensional alloc] init];
        Dimensional *cubeV = [[Dimensional alloc] init];
        Dimensional *rectangularSolidV = [[Dimensional alloc] init];
        
        
        
        
        //A는 넓이 P는 둘레 C는 원의둘레 V는 부피
        NSLog(@"정사각형의 넓이 : %lu ",[squareA squareA:10]);
        NSLog(@"정사각형의 둘레 : %lu ",[squareP squareP:8]);
        NSLog(@"직사각형의 넓레 : %lu ",[rectangleA rectangleA:8 w:2]);
        NSLog(@"직사각형의 둘레 : %lu ",[rectangleP rectangleP:8 w:3]);
        NSLog(@"원의 넓이 : %.2f ",[circleA circleA:3]);
        NSLog(@"원의 둘레 : %.2f ",[circleP circleP:3]);
        NSLog(@"삼각형의 넓이 : %.2f ",[triangle triangleA:3 h:3]);
        NSLog(@"사다리꼴의 넓이 : %.2f ",[trapezold h:3 x:7 y:2]);
        NSLog(@"사각기둥 부피 : %lu ",[cubeV cubeV:3]);
        NSLog(@"육면체 부피 : %lu ",[rectangularSolidV rectangularSolidV:2 w:3 l:4]);
    }
    return 0;
}
