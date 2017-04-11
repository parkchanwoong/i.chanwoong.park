//
//  TableViewCell.h
//  SearchBarPractice0410
//
//  Created by 박찬웅 on 2017. 4. 10..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *bookCover;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *authorLabel;

@end
