//
//  DataCenter.h
//  TableViewPrac0314
//
//  Created by 박찬웅 on 2017. 3. 14..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject
@property NSMutableArray *booksName;
@property NSMutableArray *author;
@property NSMutableArray *booksImages;
+(instancetype)shared;
- (void)setBooks;
- (NSInteger)booksCounts;


@end
