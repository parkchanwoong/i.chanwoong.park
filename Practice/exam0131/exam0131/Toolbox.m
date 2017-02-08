//
//  Toolbox.m
//  exam0131
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Toolbox.h"
#import "Person.h"
@implementation Toolbox


+ (bool)checkDeveloper:(Person *)person
{
    if([person.job  isEqualToString:@"developer"])
    {
        return YES;
    }
    else
    
    {
        return NO;
    }
}

+ (bool)checkDesigner:(Person *)person
{
    if([person.job isEqualToString:@"designer"])
    {
        return YES;
    }
    else
    {
        return NO;
    }
}
@end
