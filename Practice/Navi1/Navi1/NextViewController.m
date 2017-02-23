//
//  NextViewController.m
//  Navi1
//
//  Created by youngmin joo on 2017. 2. 21..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "NextViewController.h"
#import "CustomNaviBar.h"
@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //bar 숨김
    [self.navigationController setNavigationBarHidden:YES];
    
    CustomNaviBar *navi = [[CustomNaviBar alloc] init];
    [navi setTitle:@"VC2"];
    navi.isShowBack = YES;
    [navi setBarColor:[UIColor purpleColor]];
    [navi addLeftBtnTarget:self selector:@selector(onSelectBack:) event:UIControlEventTouchUpInside];
    [self.view addSubview:navi];
}

- (void)onSelectBack:(UIButton *)sender
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
