//
//  ViewController.m
//  LoginPracByLogo
//
//  Created by 박종찬 on 2017. 2. 7..
//  Copyright © 2017년 Jongchan Park. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UITextField *email;
@property UITextField *pw;
@property UIButton *signIn;
@property UIButton *signUp;
@property UIScrollView *loginScrollView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    UIFont *font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:17];
    
    CGSize frameSize = self.view.frame.size;
    
    self.loginScrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    self.loginScrollView.contentSize = CGSizeMake(self.loginScrollView.frame.size.width, self.loginScrollView.frame.size.height + 100);
    [self.view addSubview:self.loginScrollView];
    
    self.email = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    [self.email setCenter: CGPointMake(frameSize.width/2, frameSize.height/2)];
    [self.email.layer setCornerRadius:5];
    [self.email setBackgroundColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:0.7]];
    [self.email setPlaceholder:@"ID"];
    [self.email setFont:font];
    [self.email setDelegate:self];
    
    [self.loginScrollView addSubview:self.email];
    
    self.pw = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    [self.pw setCenter: CGPointMake(frameSize.width/2, frameSize.height/2 + 54)];
    [self.pw.layer setCornerRadius:5];
    [self.pw setBackgroundColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:0.7]];
    [self.pw setPlaceholder:@"Password"];
    [self.pw setFont:font];
    [self.pw setDelegate:self];
    
    [self.loginScrollView addSubview:self.pw];
    
    UIView *viewForBtnPosition = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    [viewForBtnPosition setCenter: CGPointMake(frameSize.width/2, frameSize.height/2 + 108)];
    
    [self.loginScrollView addSubview:viewForBtnPosition];
    
    self.signIn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 93, 40)];
    [self.signIn setBackgroundColor:[UIColor colorWithRed:60.0/255 green:89.0/255 blue:165.0/255 alpha:1.0]];
    [self.signIn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.signIn.titleLabel setFont:font];
    [self.signIn setTitle:@"Sign In" forState:UIControlStateNormal];
    [self.signIn.layer setCornerRadius:5];
    
    [viewForBtnPosition addSubview:self.signIn];
    
    self.signUp = [[UIButton alloc]initWithFrame:CGRectMake(93+14, 0, 93, 40)];
    [self.signUp setBackgroundColor:[UIColor colorWithRed:60.0/255 green:89.0/255 blue:165.0/255 alpha:1.0]];
    [self.signUp setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.signUp.titleLabel setFont:font];
    [self.signUp setTitle:@"Sign Up" forState:UIControlStateNormal];
    [self.signUp.layer setCornerRadius:5];
    
    [viewForBtnPosition addSubview:self.signUp];
    
    
    
    
    
    
}


- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self.loginScrollView setContentOffset:CGPointMake(0, 100) animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle) preferredStatusBarStyle {
        return UIStatusBarStyleLightContent;
}


@end
