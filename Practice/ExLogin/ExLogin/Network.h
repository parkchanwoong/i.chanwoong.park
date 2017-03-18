//
//  Network.h
//  ExLogin
//
//  Created by 박찬웅 on 2017. 3. 16..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString* const BASE_API = @"https://fc-ios.lhy.kr/api";
static NSString* const SIGN_UP = @"/member/signup/";
static NSString* const LOG_IN = @"/member/login/";
static NSString* const LOG_OUT = @"/member/logout/";

@interface Network : NSObject


typedef void (^CompetionBlock) (BOOL isSuccess);




- (void)signup:(NSString *)userName password1:(NSString *)password1 password2:(NSString *)password2 completionBlock:(CompetionBlock)block;
- (void)login:(NSString *)username password:(NSString *)password;



@end
