//
//  DataCenter.m
//  TableViewPrac0314
//
//  Created by 박찬웅 on 2017. 3. 14..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DataCenter.h"
@interface DataCenter()
//@property NSDictionary *books;

@end

@implementation DataCenter


+(instancetype)shared
{
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc]init];
    });
    return dataCenter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setBooks];
    }
    return self;
}

- (void)setBooks
{
    
    self.booksName = [NSMutableArray arrayWithObjects:@"나미야 잡화점의 기적",@"용의자 x의 헌신",@"머스커레이드 호텔", nil];
    self.author = [NSMutableArray arrayWithObjects:@"히가시노 케이고",@"히가시노 케이고",@"히가시노 케이고", nil];
    self.booksImages = [NSMutableArray arrayWithObjects:@"namiya.jpg",@"x.jpg",@"hotel.jpg", nil];
    
//    self.books = @{@"이름" : @[@"abc",@"def"],
//                   @"저자" : @[@"가나다",@"라마바"]};
}

- (NSInteger)booksCounts
{
    NSInteger count = [self.booksName count];
    return  count;
//    return self.booksName.count;
}


@end
