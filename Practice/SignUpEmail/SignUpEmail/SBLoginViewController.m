//
//  SBLoginViewController.m
//  SignUpEmail
//
//  Created by 박찬웅 on 2017. 3. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "SBLoginViewController.h"
#import <LocalAuthentication/LocalAuthentication.h>

@interface SBLoginViewController ()
@property (strong, nonatomic) IBOutlet UITextField *IDTextField;
@property (strong, nonatomic) IBOutlet UITextField *PasswordTextField;

@end

@implementation SBLoginViewController
- (IBAction)TouchIDButton:(UIButton *)sender
{
    LAContext *myContext = [[LAContext alloc] init];
    NSError *authError = nil;
    NSString *myLocalizedReasonString = @"터치아이디";
    
    if ([myContext canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&authError]) {
        [myContext evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                  localizedReason:myLocalizedReasonString
                            reply:^(BOOL success, NSError *error) {
                                if (success) {
                                    dispatch_async(dispatch_get_main_queue(), ^{
                                        //[self performSegueWithIdentifier:@"Success" sender:nil];
                                    });
                                } else {
                                    dispatch_async(dispatch_get_main_queue(), ^{
                                        
                                        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:error.description preferredStyle:UIAlertControllerStyleAlert];
                                        
                                        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
                                        
                                        [alert addAction:ok];
                                        [self presentViewController:alert animated:YES completion:nil];
                                        
                                        // Rather than show a UIAlert here, use the error to determine if you should push to a keypad for PIN entry.
                                    });
                                }
                            }];
    } else {
        dispatch_async(dispatch_get_main_queue(), ^{
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:authError.description preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *ok = [UIAlertAction actionWithTitle:@"확인2" style:UIAlertActionStyleCancel handler:nil];
            
            [alert addAction:ok];
            [self presentViewController:alert animated:YES completion:nil];
      
            // Rather than show a UIAlert here, use the error to determine if you should push to a keypad for PIN entry.
        });
    }
}






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
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"성공" message:@"그래" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"메인으로" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
             
    } else {
        NSLog(@"로그인 실패");
    }
        
}




//- (IBAction)back:(UIStoryboardSegue *)sender { //버튼, exit 를 이용해 돌아오고자 하는곳에 써놓음
//    
//    
//}




























@end
