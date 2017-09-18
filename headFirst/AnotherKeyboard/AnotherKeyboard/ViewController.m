//
//  ViewController.m
//  AnotherKeyboard
//
//  Created by 박찬웅 on 2017. 3. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *exTextField;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIDatePicker *data = [[UIDatePicker alloc]init];
    
    self.exTextField.inputView = data;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(UIButton *)sender
{
    [self.indicator startAnimating];
}
- (IBAction)stop:(UIButton *)sender
{
    [self.indicator stopAnimating];
}


@end
