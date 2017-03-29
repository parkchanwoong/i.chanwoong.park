//
//  CollectionViewDataSource.h
//  CollectionViewPrac0328
//
//  Created by 박찬웅 on 2017. 3. 28..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CollectionViewDataSource : NSObject
<UICollectionViewDataSource>

@property NSArray *dataArray;
- (instancetype)initWithDataArray:(NSArray *)dataArray;


@end
