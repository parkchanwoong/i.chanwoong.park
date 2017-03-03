//
//  ViewController.m
//  Practice0303
//
//  Created by 박찬웅 on 2017. 3. 3..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"
@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    UITableView *tv = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    tv.dataSource = self;
    tv.delegate = self;
    [self.view addSubview:tv];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    
    NSDictionary *result = [[DataCenter sharedInstance].fileList objectAtIndex:indexPath.row];
    cell.textLabel.text = [result objectForKey:@"Name"];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[DataCenter sharedInstance].fileList count];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
