//
//  DataCenter.h
//  Practice0303
//
//  Created by 박찬웅 on 2017. 3. 3..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject
@property NSString *plist;
@property NSArray *fileList;

+ (instancetype)sharedInstance;

@end
