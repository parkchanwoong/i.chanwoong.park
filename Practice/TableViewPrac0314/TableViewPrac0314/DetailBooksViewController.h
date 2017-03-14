//
//  DetailBooksViewController.h
//  TableViewPrac0314
//
//  Created by 박찬웅 on 2017. 3. 14..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailBooksViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UILabel *detailName;
@property (weak, nonatomic) IBOutlet UILabel *detailAuthor;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;

@end
