//
//  CustomAlertViewController.h
//  AS0306
//
//  Created by 박찬웅 on 2017. 3. 6..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomAlertViewController : UIAlertController

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle okActionURL:(NSString *)urlStr;
+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle sender:(UIViewController *)sender segue:(NSString *)segueID;

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle handler:(void (^)(UIAlertAction *action))handler;

@end
