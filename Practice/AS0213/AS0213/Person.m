//
//  Person.m
//  AS0213
//
//  Created by 박찬웅 on 2017. 2. 13..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithName:(NSString *)name gender:(NSString *)gender mobileNumber:(NSString *)mobile
{
    self = [super init];
    if(self)
    {
        self.name = name;
        self.gender = gender;
        self.mobile = mobile;
    }
    return self;
}
@end
