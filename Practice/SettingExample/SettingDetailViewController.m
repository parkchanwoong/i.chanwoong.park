//
//  SettingDetailViewController.m
//  SettingExample
//
//  Created by youngmin joo on 2017. 2. 22..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "SettingDetailViewController.h"
#import "DataCenter.h"
@interface SettingDetailViewController ()

@end

@implementation SettingDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
    NSString *nameData = [[NSUserDefaults standardUserDefaults]objectForKey:@"name"];
    label.text = nameData;
    
    [self.view addSubview:label];
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
