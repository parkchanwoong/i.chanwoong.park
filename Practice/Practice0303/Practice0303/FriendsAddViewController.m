//
//  FriendsAddViewController.m
//  Practice0303
//
//  Created by 박찬웅 on 2017. 3. 3..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "FriendsAddViewController.h"

@interface FriendsAddViewController ()

@end

@implementation FriendsAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)addFriend:(UIBarButtonItem *)sender
{
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
