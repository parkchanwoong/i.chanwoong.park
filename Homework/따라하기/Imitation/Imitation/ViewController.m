//
//  ViewController.m
//  Imitation
//
//  Created by 박찬웅 on 2017. 2. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomTableViewCell.h"
@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tv = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    tv.delegate = self;
    tv.dataSource = self;
    tv.backgroundColor = [UIColor colorWithRed:242 / 255.0 green:241 / 255.0 blue:237 / 255.0 alpha:1];
    [self.view addSubview:tv];
    
    UIView *uv = [[UIView alloc]initWithFrame:CGRectMake(0, tv.frame.size.height, self.view.frame.size.width, self.view.frame.size.height - tv.frame.size.height)];
    [self.view addSubview:uv];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
