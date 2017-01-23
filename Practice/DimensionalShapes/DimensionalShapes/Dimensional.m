//
//  Dimensional.m
//  DimensionalShapes
//
//  Created by 박찬웅 on 2017. 1. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Dimensional.h"

@implementation Dimensional
//정사각형넓이      s * s
- (NSUInteger)squareA:(NSUInteger)s
{
    return  s * s;
}

//정사각형 둘레    4 * x
- (NSUInteger)squareP:(NSUInteger)x
{
    return 4 * x ;
}
//직사각형 넓이    l * w
- (NSUInteger)rectangleA:(NSUInteger)l
                       w:(NSUInteger)w
{
    return l * w ;
}

//직사각형 둘레   2l + 2w
- (NSUInteger)rectangleP:(NSUInteger)l
                       w:(NSUInteger)w
{
    return 2*l + 2*w;
}
//원의 넓이 3.14 r * r
- (CGFloat)circleA:(CGFloat)r
{
    return 3.14 * r * r;
}

//원의 둘레 2 * 3.14 * r
- (CGFloat)circleP:(CGFloat)r
{
    return 2 * 3.14 * r;
}
//삼각형 x * h /2
- (CGFloat)triangleA:(CGFloat)x h:(CGFloat)h
{
    return x * h / 2;
}

//사다리꼴 h / 2 * (x + y)
- (CGFloat)h:(CGFloat)h
                     x:(CGFloat)x
                     y:(CGFloat)y
{
    return h / 2 * (x + y);
}

- (NSUInteger)cubeV:(NSUInteger)s
{
    return s * s * s;
}//사각기둥 부피 s * s * s


- (NSUInteger)rectangularSolidV:(NSUInteger)h
                             w:(NSUInteger)w
                             l:(NSUInteger)l
{
    return h * w * l;
}//육면체부피? h * w * l

@end
