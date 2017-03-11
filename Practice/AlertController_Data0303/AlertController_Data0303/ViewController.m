//
//  ViewController.m
//  AlertController_Data0303
//
//  Created by 박찬웅 on 2017. 3. 5..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) UIAlertController *alertController;
@property (nonatomic) UIAlertController *alertController2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
//    [btn1 setTitle:@"Alert" forState:UIControlStateNormal];
//    [btn1 addTarget:self action:@selector(alertStart:) forControlEvents:UIControlEventTouchUpInside];
//    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [self.view addSubview:btn1];
    
  
    
    
    
    
    
    
    self.alertController2 = [UIAlertController alertControllerWithTitle:@"제목부분 액션시트" message:@"메시지부분 액션시트" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *actionSheetOkAction = [UIAlertAction actionWithTitle:@"확인 액션시트" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"확인 부분인데 액션시트야");
    }];
    UIAlertAction *actionSheetCancel = [UIAlertAction actionWithTitle:@"취소 액션시트" style:UIAlertActionStyleCancel handler:nil];
    [self.alertController2 addAction:actionSheetOkAction];
    [self.alertController2 addAction:actionSheetCancel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)alertStart:(UIButton *)sender
{
    
    self.alertController = [UIAlertController alertControllerWithTitle:@"제목" message:@"메세지입력" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"확인 누르면 일어날 일들");
    }];
    
    UIAlertAction *cancel   = [UIAlertAction actionWithTitle:@"취소버튼" style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction *another = [UIAlertAction actionWithTitle:@"어나더어나더" style:UIAlertActionStyleDestructive handler:nil];
    
    [self.alertController addAction:okAction];
    [self.alertController addAction:cancel];
    [self.alertController addAction:another];
    [self presentViewController:self.alertController animated:YES completion:nil];
}
- (IBAction)actionSheet:(UIButton *)sender
{
    [self presentViewController:self.alertController2 animated:YES completion:nil];
}



@end
