//
//  DataCenter.m
//  SignUpEmail
//
//  Created by 박찬웅 on 2017. 3. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance
{
    static DataCenter *datacenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        datacenter = [[DataCenter alloc] init];
    });
    return datacenter;
}


@end
