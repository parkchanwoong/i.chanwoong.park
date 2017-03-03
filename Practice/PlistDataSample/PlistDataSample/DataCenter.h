//
//  DataCenter.h
//  PlistDataSample
//
//  Created by youngmin joo on 2017. 3. 2..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

@property (nonatomic) NSInteger friendCount;

+ (instancetype)singleton;

- (NSArray *)loadFriendListVer1;


- (void)addFriend:(NSString *)name phone:(NSString *)phone;
- (NSArray *)loadFriendListVer2;

@end
