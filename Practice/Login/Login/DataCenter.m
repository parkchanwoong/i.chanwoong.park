//
//  DataCenter.m
//  Login
//
//  Created by 박찬웅 on 2017. 2. 24..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInfo
{
   static DataCenter *data;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
       data  =  [[DataCenter alloc]init];
    });
    
    return data;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        //불러오기
        self.loginId = [[NSUserDefaults standardUserDefaults] objectForKey:@"userID"];
        self.loginPw = [[NSUserDefaults standardUserDefaults] objectForKey:@"userPW"];
    }
    return self;
}

- (void)saveData
{ ////저장하기
    [[NSUserDefaults standardUserDefaults] setObject:self.loginId forKey:@"userID"];
    [[NSUserDefaults standardUserDefaults] setObject:self.loginPw forKey:@"userPW"];
}

@end
