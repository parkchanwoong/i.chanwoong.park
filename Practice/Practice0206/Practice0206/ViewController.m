//
//  ViewController.m
//  Practice0206
//
//  Created by 박찬웅 on 2017. 2. 6..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UITextField *tf;
//@property UITextField *tf2;
@property UILabel *lb;
@property UIButton *btn;

//@property UITextField *temp;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tf = [[UITextField alloc] initWithFrame:CGRectMake(40, 20, 180, 35)];
    self.tf.borderStyle = UITextBorderStyleRoundedRect;
    self.tf.placeholder = @"텍스트 입력";
    self.tf.delegate = self;
    self.tf.tag = 1000;
    self.tf.textColor = [UIColor purpleColor];
    self.view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.tf];
    
    
//    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(40, 80, 180, 35)];
//    self.tf2.borderStyle = UITextBorderStyleRoundedRect;
//    self.tf2.placeholder = @"여기에 입력해주세요";
//    self.tf2.delegate = self;
//    self.tf2.tag = 2000;
//    self.tf2.textColor = [UIColor purpleColor];
//    self.view.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:self.tf2];
    
    self.lb = [[UILabel alloc] initWithFrame:CGRectMake(40, 140, 180, 35)];
    self.lb.font = [UIFont systemFontOfSize:20];
    self.lb.text = @"결과 : 텍스트 입력";
    self.lb.textColor = [UIColor redColor];
    [self.view addSubview:self.lb];
    
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(260, 60, 100, 100)];
    [self.btn setTitle:@"확인" forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.btn setBackgroundColor:[UIColor blackColor]];
    [self.btn addTarget:self action:@selector(input:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.btn];

}

//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    [self.tf resignFirstResponder];
//    return YES;
//}
//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    if (textField.tag == 1000) {
//        [self.tf2 becomeFirstResponder];
//    }
//    else if (textField.tag == 2000)
//    {
//        [self.tf2 resignFirstResponder]; //리턴 누르면 키보드 내려감
//    }
//    else
//    NSLog(@"에러남");
//    
//    
//    return YES;
//}

- (BOOL)input:(UITextField *)sender
{
    self.lb.text = self.tf.text;
    
    
    NSLog(@"버튼눌림");
    [self.tf resignFirstResponder]; //키보드 내려감
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
