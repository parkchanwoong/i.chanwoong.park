//
//  Person.h
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 19..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;
@property NSString *gender;

- (void)eat;

- (void)named:(Person *)pcw;



@end
