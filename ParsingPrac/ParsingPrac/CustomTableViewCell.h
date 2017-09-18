//
//  CustomTableViewCell.h
//  ParsingPrac
//
//  Created by 박찬웅 on 2017. 8. 29..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *address;
@property (strong, nonatomic) IBOutlet UILabel *CLASS;
@property (strong, nonatomic) IBOutlet UILabel *filename;

@property (strong, nonatomic) IBOutlet UILabel *objectID;

@property (strong, nonatomic) IBOutlet UILabel *latX;
@property (strong, nonatomic) IBOutlet UILabel *lngY;

@end
