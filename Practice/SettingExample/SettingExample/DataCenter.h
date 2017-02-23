//
//  DataCenter.h
//  SettingExample
//
//  Created by 박찬웅 on 2017. 2. 23..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedInstance;

@property (nonatomic) BOOL swOnOff;


@end
