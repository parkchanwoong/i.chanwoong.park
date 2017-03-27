//
//  DataCenter.m
//  SignUpEmail
//
//  Created by 박찬웅 on 2017. 3. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance
{
    static DataCenter *datacenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        datacenter = [[DataCenter alloc] init];
    });
    return datacenter;
}

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        [self saveData];
//    }
//    return self;
//}
//
//- (void)saveData
//{
//    [[NSUserDefaults standardUserDefaults] setObject:<#(nullable id)#> forKey:<#(nonnull NSString *)#>]
//}
@end
