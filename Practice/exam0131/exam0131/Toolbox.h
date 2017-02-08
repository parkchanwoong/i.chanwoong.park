//
//  Toolbox.h
//  exam0131
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface Toolbox : NSObject


+ (bool)checkDeveloper:(Person *)person;
+ (bool)checkDesigner:(Person *)person;
@end
