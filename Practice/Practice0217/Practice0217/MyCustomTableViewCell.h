//
//  MyCustomTableViewCell.h
//  Practice0217
//
//  Created by 박찬웅 on 2017. 2. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomTableViewCell : UITableViewCell


- (void)setDataWithImgName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr;
- (void)updateLayout;
@end
