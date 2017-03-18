//
//  DataCenter.h
//  ExLogin
//
//  Created by 박찬웅 on 2017. 3. 15..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject


@property NSString *userId;
@property NSString *userPw;
@property NSString *userPwRe;




+(instancetype)shared;



@end
