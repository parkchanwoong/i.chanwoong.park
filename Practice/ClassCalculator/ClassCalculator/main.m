//
//  main.m
//  ClassCalculator
//
//  Created by 박찬웅 on 2017. 1. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculator *cal = [[Calculator alloc] init];
        
//        cal.math = 20;
//        cal.english = 30;
//        cal.science = 30;
//        cal.korean = 40;
//        cal.music = 40;
        
        //cal.sum = cal.math + cal.english + cal.science + cal.korean + cal.music;
        
        [cal sumClass:20 english:30 science:30 korean:40 music:40];
        NSLog(@"값은 %lu 입니다.",cal.sum);
        NSLog(@"값은 %lu 입니다.",cal.sum);
        [cal average];
        NSLog(@"값은 %lu 입니다.",cal.average);
    }
    return 0;
}
