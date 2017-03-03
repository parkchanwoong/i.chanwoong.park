//
//  AddPersonViewController.m
//  PlistDataSample
//
//  Created by youngmin joo on 2017. 3. 2..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "AddPersonViewController.h"
#import "DataCenter.h"

@interface AddPersonViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;

@end

@implementation AddPersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)okBtnAction:(id)sender {
    
    NSString *name = self.nameTF.text;
    NSString *phone = self.phoneTF.text;
    
    if (name.length > 0 && phone.length > 0) {
        [[DataCenter singleton] addFriend:name phone:phone];
        [self.navigationController popViewControllerAnimated:YES];
    }else
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"웁스" message:@"항목이 모두 작성되지 않았습니다." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:^{
            if (name.length == 0) {
                [self.nameTF becomeFirstResponder];
            }else
            {
                [self.phoneTF becomeFirstResponder];
            }
        }];
    }
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.tag == 100) {
        [self.phoneTF becomeFirstResponder];
    }else
    {
        [textField resignFirstResponder];
    }
    return YES;
}

@end
