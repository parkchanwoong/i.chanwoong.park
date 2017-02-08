//
//  Gogodan.h
//  Absolute
//
//  Created by 박찬웅 on 2017. 2. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gogodan : NSObject


+ (void)gogodan:(NSInteger)dan;

+ (NSString *)findMultipleNum:(NSUInteger)num
                     maxLange:(NSUInteger)maxLange;

+ (void)gugudan:(NSInteger)dan;
+ (void)gugudan;






+ (void)factorial:(NSInteger)fact;
@end
