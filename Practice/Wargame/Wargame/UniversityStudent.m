//
//  UniversityStudent.m
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 19..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "UniversityStudent.h"

@implementation UniversityStudent

- (void)goMT{
    NSLog(@"MT가기");
}

- (void)eat{
    NSLog(@"대학생이 먹는다");
}

- (void)study{
    NSLog(@"대학생 공부중");
}


- (void)named
{
    NSLog(@"제 이름은 %@입니다",self.name);
}

@end
