//
//  Dimensional.h
//  DimensionalShapes
//
//  Created by 박찬웅 on 2017. 1. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dimensional : NSObject
// 정사각형
@property NSUInteger s;    //가로

// 직사각형
@property NSUInteger w;   //세로
@property NSUInteger l;   //가로
//원
@property NSUInteger r;  //반지름
//삼각형
@property NSUInteger h;  //높이







- (NSUInteger)squareA:(NSUInteger)s;//정사각형넓이 s * s

- (NSUInteger)squareP:(NSUInteger)s;//정사각형 둘레 4 * s

- (NSUInteger)rectangleA:(NSUInteger)l w:(NSUInteger)w;//직사각형 넓이 l * w

- (NSUInteger)rectangleP:(NSUInteger)l w:(NSUInteger)w;//직사각형 둘레

- (CGFloat)circleA:(CGFloat)r;//원의 넓이 3.14 * r * r

- (CGFloat)circleP:(CGFloat)r;//원의 둘레 2 * 3.14 * r

- (CGFloat)triangleA:(CGFloat)x h:(CGFloat)h;//삼각형 b * h /2

- (CGFloat)h:(CGFloat)h x:(CGFloat)x y:(CGFloat)y;//사다리꼴 넓이 h / 2 * (x + y)

- (NSUInteger)cubeV:(NSUInteger)s; //사각기둥 부피 s * s * s

- (NSUInteger)rectangularSolidV:(NSUInteger)h
                             w:(NSUInteger)w
                             l:(NSUInteger)l;  //육면체부피? h * w * l
@end
