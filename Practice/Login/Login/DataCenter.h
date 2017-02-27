//
//  DataCenter.h
//  Login
//
//  Created by 박찬웅 on 2017. 2. 24..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedInfo;

@property NSString *loginId;
@property NSString *loginPw;
//@property NSString *loginPWRe;
@property NSDictionary *dic;

-(void)saveData;
@end
