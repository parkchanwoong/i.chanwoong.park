//
//  Person.m
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 19..
//  Copyright © 2017년 Parkchanwoong. All rights reserced.
//

#import "Person.h"



@implementation Person

- (instancetype)initWithName:(NSString *)name
                         age:(NSInteger)age
                      gender:(NSString *)gender;
{
    self = [super init];
    
    self.name = name;
    self.age  = age;
    self.gender = gender;
    
    return self;
}




- (void)eat{
    NSLog(@"먹습니다");
    
  }

- (void)named:(Person *)pcw{
    
    NSLog(@"이름은 %@입니다",pcw.name);
}


@end
