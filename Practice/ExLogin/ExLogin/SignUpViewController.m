//
//  SignUpViewController.m
//  ExLogin
//
//  Created by 박찬웅 on 2017. 3. 15..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "SignUpViewController.h"
#import "DataCenter.h"
#import "Network.h"
@interface SignUpViewController ()
<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tfId;
@property (weak, nonatomic) IBOutlet UITextField *tfPw;
@property (weak, nonatomic) IBOutlet UITextField *tfPwRe;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tfPw setSecureTextEntry:YES];
    self.tfPwRe.secureTextEntry = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.tag == 1)
    {
        [self.tfPw becomeFirstResponder];
    }
    else if (textField.tag == 2)
    {
        [self.tfPwRe becomeFirstResponder];
    }
    else
    {
        [self.tfPwRe resignFirstResponder];
    }
    return YES;
}
- (IBAction)signUpClick:(UIButton *)sender
{
    [self.tfId resignFirstResponder];
    [self.tfPw resignFirstResponder];
    [self.tfPwRe resignFirstResponder];
    
    
    
    
    Network *network = [[Network alloc]init];
    [network signup:self.tfId.text password1:self.tfPw.text password2:self.tfPwRe.text completionBlock:^(BOOL isSuccess) {
        if(isSuccess)
        {
            NSLog(@"성공");
            [self dismissViewControllerAnimated:YES completion:nil];
        }
        else
        {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ㅋㅋ" message:@"ㅋㅋㅋㅋ" preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:nil];
            
            [alert addAction:cancel];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }];
}

    
    //dispatch_async(<#dispatch_queue_t  _Nonnull queue#>, <#^(void)block#>)
    
    /*
    if (self.tfId.text.length >= 1 && self.tfPw.text == self.tfPwRe.text)
    {
        
        [[NSUserDefaults standardUserDefaults] setObject:self.tfId.text forKey:@"userID"];
        [[NSUserDefaults standardUserDefaults] setObject:self.tfPw.text forKey:@"userPW"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [DataCenter shared].userId = [[NSUserDefaults standardUserDefaults] stringForKey:@"userID"];
        [DataCenter shared].userPw = [[NSUserDefaults standardUserDefaults] stringForKey:@"userPW"];
        
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    else
    {
        NSLog(@"뭔가 문제가 있어");
        
    }
    */
    


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
