//
//  DataCenter.m
//  ExLogin
//
//  Created by 박찬웅 on 2017. 3. 15..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter()




@end

@implementation DataCenter


+ (instancetype)shared
{
   static DataCenter *datacenter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        datacenter = [[DataCenter alloc] init];
    });
    return datacenter;
}







@end
