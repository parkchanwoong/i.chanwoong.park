//
//  ViewController.m
//  AS0306
//
//  Created by 박찬웅 on 2017. 3. 6..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "CustomAlertViewController.h"
#import "AlertControllerCenter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Alert:(UIButton *)sender
{
//    AlertControllerCenter *alert = [[AlertControllerCenter alloc] init];
//    [self presentViewController:alert.alertController animated:YES completion:nil];
//    CustomAlertViewController *alert2 = [CustomAlertViewController alertControllerWithTitle:@"타이틀임" message:@"깔깔깔" preferredStyle:UIAlertControllerStyleAlert okActionURL:@"apple.com"];
    CustomAlertViewController *alert2 = [CustomAlertViewController alertControllerWithTitle:@"test" message:@"test" preferredStyle:UIAlertControllerStyleAlert sender:self segue:@"testSegue"];
    [self presentViewController:alert2 animated:YES completion:nil];
}

@end
