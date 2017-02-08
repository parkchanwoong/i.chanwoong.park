//
//  main.m
//  exam0131
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p1 = [[Person alloc] initWithName:@"박찬웅"];
    Person *p2 = [[Person alloc] initWithName:@"가가"];
    //person.name = @"박찬웅";
    p1.age  = 26;
    p1.job  = @"developer";
    p1.birthday = @"0211";
    
    p2.age = 11;
    p2.job = @"designer";
    
   
    
    [p1 whatIsYourJob:p1.job];
    
    NSLog(@"직업 : %@",p1.job);
   
    [p1 birthDayCheck];
    
    return 0;
}
