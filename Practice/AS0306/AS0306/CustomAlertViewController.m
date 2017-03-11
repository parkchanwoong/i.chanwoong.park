//
//  CustomAlertViewController.m
//  AS0306
//
//  Created by 박찬웅 on 2017. 3. 6..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "CustomAlertViewController.h"

@interface CustomAlertViewController ()

@end

@implementation CustomAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"클릭했음");
//        
//    }];
//    
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:nil];
//    
//    [self addAction:okAction];
//    [self addAction:cancelAction];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle okActionURL:(NSString *)urlStr {
    
    CustomAlertViewController *instance = [CustomAlertViewController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"%@",urlStr);
        
    }];
    
    [instance addAction:okAction];
    
    return instance;
    
}

//기본 메서드 재정의
+ (instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle {
    
    CustomAlertViewController *instance = [super alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    

    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:nil];
    

    [instance addAction:cancelAction];
    
    return instance;
    
}

+ (instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle sender:(UIViewController *)sender segue:(NSString *)segueID {
    
    CustomAlertViewController *instance = [CustomAlertViewController alertControllerWithTitle:title message:message preferredStyle:preferredStyle]; //취소버튼 있는 얼러트컨트롤러
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [sender performSegueWithIdentifier:segueID sender:sender];
        
    }];
    
    [instance addAction:okAction];
    
    return instance;
    
}

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle handler:(void (^)(UIAlertAction *action))handler{
    
    CustomAlertViewController *instance = [CustomAlertViewController alertControllerWithTitle:title message:message preferredStyle:preferredStyle]; //취소버튼 있는 얼러트컨트롤러
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:handler];
    
    [instance addAction:okAction];
    
    return instance;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
