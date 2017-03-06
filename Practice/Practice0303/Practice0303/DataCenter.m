//
//  DataCenter.m
//  Practice0303
//
//  Created by 박찬웅 on 2017. 3. 3..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance
{
    static DataCenter *dataCenter;
    
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
        
        [self setPlist2];
    }
    return self;
}

- (void)setPlist2
{
    //pathForResource : 파일의 경로를 가져오는 메소드
    
    self.plist = [[NSBundle mainBundle]pathForResource:@"Sample" ofType:@"plist"];
    self.fileList = [NSArray arrayWithContentsOfFile:self.plist];
    
}

-(void)dicSave
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths objectAtIndex:0];
    
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if(![fileManager fileExistsAtPath:docuPath])
    {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:docuPath];
    
    [dic writeToFile:docuPath atomically:NO];
}

-(void)dicLoad
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths objectAtIndex:0];
    
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Sample.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if(![fileManager fileExistsAtPath:docuPath])
    {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    //NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:docuPath];
}

@end
