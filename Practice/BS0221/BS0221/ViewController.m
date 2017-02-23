//
//  ViewController.m
//  BS0221
//
//  Created by 박찬웅 on 2017. 2. 21..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property UITextField *tfNum1;
@property UITextField *tfNum2;

@property UILabel *result;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tfNum1 = [[UITextField alloc]initWithFrame:CGRectMake(40, 40, 130, 40)];
    self.tfNum1.layer.borderWidth = 2;
    self.tfNum1.layer.borderColor = [UIColor blackColor].CGColor;
    self.tfNum1.placeholder = @"첫번째 값 입력";
    self.tfNum1.delegate = self;
    [self.view addSubview:self.tfNum1];
    
    self.tfNum2 = [[UITextField alloc]initWithFrame:CGRectMake(40, 100, 130, 40)];
    self.tfNum2.layer.borderWidth = 2;
    self.tfNum2.layer.borderColor = [UIColor blackColor].CGColor;
    self.tfNum2.placeholder = @"두번째 값 입력";
    self.tfNum2.delegate = self;
    [self.view addSubview:self.tfNum2];
    
    self.result = [[UILabel alloc]initWithFrame:CGRectMake(40, 160, 130, 40)];
    self.result.layer.borderColor = [UIColor blackColor].CGColor;
    self.result.layer.borderWidth = 2;
    [self.view addSubview:self.result];
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
        return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
