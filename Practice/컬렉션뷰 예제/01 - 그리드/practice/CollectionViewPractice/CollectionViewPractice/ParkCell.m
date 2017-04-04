//
//  ParkCell.m
//  CollectionViewPractice
//
//  Created by 박찬웅 on 2017. 3. 21..
//  Copyright © 2017년 Dabu. All rights reserved.
//

#import "ParkCell.h"

@implementation ParkCell


- (void)inputParkData:(ParkData *)data
{
    self.parkImageView.image = [UIImage imageNamed:data.parkPhotoString];
    self.nameLabel.text = data.parkNameString;
}

@end
