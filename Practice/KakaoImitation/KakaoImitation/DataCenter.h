//
//  DataCenter.h
//  KakaoImitation
//
//  Created by 박찬웅 on 2017. 2. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedData;

@property BOOL switchOnOff;

@end
