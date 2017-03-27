//
//  SBLoginViewController.m
//  SignUpEmail
//
//  Created by 박찬웅 on 2017. 3. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "SBLoginViewController.h"

@interface SBLoginViewController ()
@property (strong, nonatomic) IBOutlet UITextField *IDTextField;
@property (strong, nonatomic) IBOutlet UITextField *PasswordTextField;

@end

@implementation SBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButton:(UIButton *)sender
{
    NSString *tempID = [[NSUserDefaults standardUserDefaults] stringForKey:@"ID"];
    NSString *tempPW = [[NSUserDefaults standardUserDefaults] stringForKey:@"PW"];
    
    if ([self.IDTextField.text isEqualToString:tempID] && [self.PasswordTextField.text isEqualToString:tempPW] ) {
        NSLog(@"로그인 성공");
    } else {
        NSLog(@"로그인 실패");
    }
        
}




//- (IBAction)back:(UIStoryboardSegue *)sender { //버튼, exit 를 이용해 돌아오고자 하는곳에 써놓음
//    
//    
//}




























@end
