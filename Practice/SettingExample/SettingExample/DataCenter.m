//
//  DataCenter.m
//  SettingExample
//
//  Created by 박찬웅 on 2017. 2. 23..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance
{
    static DataCenter *dataCenter;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
       dataCenter = [[DataCenter alloc]init];
    });
    
    return dataCenter;
}


@end
