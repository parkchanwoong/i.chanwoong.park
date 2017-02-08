//
//  Memo.h
//  MemoApp
//
//  Created by 박찬웅 on 2017. 1. 25..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Memo : NSObject

@property NSMutableArray *memos;

- (void)saveString:(NSString *)string;
- (NSString *)loadAtIndex:(NSUInteger)index;

@end
