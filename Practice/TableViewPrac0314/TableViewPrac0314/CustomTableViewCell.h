//
//  CustomTableViewCell.h
//  TableViewPrac0314
//
//  Created by 박찬웅 on 2017. 3. 14..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@property (weak, nonatomic) IBOutlet UIImageView *booksImage;

@end
