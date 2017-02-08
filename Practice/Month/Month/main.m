//
//  main.m
//  Month
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Month.h"
int main(int argc, const char * argv[]) {
    
    Month *month = [[Month alloc] init];
    
    [month lastDayOfMonth:2];
    
        return 0;
}
