//
//  DataCenter.m
//  AS_Plist0307
//
//  Created by 박찬웅 on 2017. 3. 7..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype) sharedInstance
{
     static DataCenter *dataCenter;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc]init];
    });
    
    return dataCenter;
}
@end
