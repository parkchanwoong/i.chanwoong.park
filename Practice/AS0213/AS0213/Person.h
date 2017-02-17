//
//  Person.h
//  AS0213
//
//  Created by 박찬웅 on 2017. 2. 13..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property NSString *name;
@property NSString *gender;
@property NSString *mobile;
- (instancetype)initWithName:(NSString *)name
                      gender:(NSString *)gender
                mobileNumber:(NSString *)mobile;
@end
