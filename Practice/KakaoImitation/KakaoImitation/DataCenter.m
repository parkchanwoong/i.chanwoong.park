//
//  DataCenter.m
//  KakaoImitation
//
//  Created by 박찬웅 on 2017. 2. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedData
{
    NSLog(@"가가");
    static DataCenter *data;
    
    static dispatch_once_t token;
    
    
    dispatch_once(&token, ^{
         data = [[DataCenter alloc]init];
        NSLog(@"다다");
    });
    
    
    return data;
}

- (instancetype)init
{
    NSLog(@"나나");
    self = [super init];
    if (self) {
        [self setSwitchOnOff:NO];
    }
    return self;
}


@end
