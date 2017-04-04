//
//  ParkCell.h
//  CollectionViewPractice
//
//  Created by 박찬웅 on 2017. 3. 21..
//  Copyright © 2017년 Dabu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ParkData.h"

@interface ParkCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *parkImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

- (void)inputParkData:(ParkData *)data;

@end
