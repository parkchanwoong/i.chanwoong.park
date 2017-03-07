//
//  CustomAlertViewController.h
//  AS0306
//
//  Created by 박찬웅 on 2017. 3. 6..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomAlertViewController : UIAlertController

+ (_Nullable instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle okActionURL:(nullable NSString *)urlStr;
+ (_Nullable instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle sender:(nullable UIViewController *)sender segue:(nullable NSString *)segueID;

@end
