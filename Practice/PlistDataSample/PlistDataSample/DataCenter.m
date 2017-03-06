//
//  DataCenter.m
//  PlistDataSample
//
//  Created by youngmin joo on 2017. 3. 2..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "DataCenter.h"

static NSString * const FRIEND_NAME = @"name";
static NSString * const FRIEND_PHONE = @"phone";

@implementation DataCenter

+ (instancetype)singleton
{
    static DataCenter *center;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center = [[DataCenter alloc] init];
    });
    
    return center;
    
}
//ver 1
- (NSArray *)loadFriendListVer1
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Friends" ofType:@"plist"];
    NSArray *friendList = [NSArray arrayWithContentsOfFile:path];
    return friendList;
}

//ver 2
- (void)addFriend:(NSString *)name phone:(NSString *)phone
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //Documants directory base
    NSString *basePath = [paths objectAtIndex:0];
    //file path
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Friends.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath])
    {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Friends" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    
    NSMutableArray *friendList = [NSMutableArray arrayWithContentsOfFile:docuPath];
    
    //NSDictionary *dic = @{@"name":name , @"phone":phone};
    NSDictionary *dic = @{FRIEND_NAME:name,FRIEND_PHONE:phone};
    
    [friendList addObject:dic];
    //저장
    [friendList writeToFile:docuPath atomically:NO];
    
    self.friendCount++;
}


- (NSArray *)loadFriendListVer2
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //Documants directory base
    NSString *basePath = [paths objectAtIndex:0];
    //file path
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Friends.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath])
    {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Friends" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    
    NSMutableArray *friendList = [NSMutableArray arrayWithContentsOfFile:docuPath];
    
    self.friendCount =  friendList.count;
    
    return friendList;
}


@end
