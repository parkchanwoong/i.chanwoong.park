//
//  Car.h
//  MySecondApp
//
//  Created by 박찬웅 on 2017. 1. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property id brandName;
@property id carColor;
@property id engine;
@property id windowType;
@property id gearType;
@property id radio;
@property id handle;

- (id)forward;
- (id)back;
- (id)washer;
- (id)radioOnOff;
- (id)accelator;
- (id)breaking; //putTheBreak

@end
