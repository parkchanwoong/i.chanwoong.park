//
//  WorldPhotosModel.m
//  WorldPhotos
//
//  Created by 박찬웅 on 2017. 9. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "WorldPhotosModel.h"

@implementation WorldPhotosModel

- (NSMutableArray *)arrayList{
    if (_arrayList == nil) {
        _arrayList = [@[] mutableCopy];
    }
    return _arrayList;
}


- (instancetype)init{
    
    self = [super init];
    
    if (self) {
        NSDictionary *dic = @{@"city":@"Makao",
                              @"zone":@"R.O.C",
                              @"image":@"makao",
                              @"latitude":[NSNumber numberWithDouble:22.202998],
                              @"longitude":[NSNumber numberWithDouble:113.551441]};
        [self.arrayList addObject:dic];
        
        dic = @{@"city":@"말레",
                @"zone":@"몰디브",
                @"image":@"male",
                @"latitude":@4.174547,
                @"longitude":@73.509793};
        [self.arrayList addObject:dic];
        
        dic = @{@"city":@"보라보라 섬",
                @"zone":@"프랑스",
                @"image":@"bora",
                @"latitude":@-16.501579,
                @"longitude":@-151.739883};
        [self.arrayList addObject:dic];
        
        dic = @{@"city":@"발리",
                @"zone":@"인도네시아",
                @"image":@"bali",
                @"latitude":@-8.337276,
                @"longitude":@115.180067};
        [self.arrayList addObject:dic];
    }
    return self;
}
@end
