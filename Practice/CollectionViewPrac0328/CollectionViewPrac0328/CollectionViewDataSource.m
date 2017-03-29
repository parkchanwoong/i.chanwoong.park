//
//  CollectionViewDataSource.m
//  CollectionViewPrac0328
//
//  Created by 박찬웅 on 2017. 3. 28..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "CollectionViewDataSource.h"

@implementation CollectionViewDataSource

- (instancetype)initWithDataArray:(NSArray *)dataArray
{
    self = [super init];
    if (self) {
        self.dataArray = dataArray;
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collectionViewCell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor redColor];
    return cell;
}


@end
