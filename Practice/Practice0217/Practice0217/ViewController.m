//
//  ViewController.m
//  Practice0217
//
//  Created by 박찬웅 on 2017. 2. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

#import "MyCustomTableViewCell.h"
@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
//    [super viewDidLoad];
//    MyCustomView *customView = [[MyCustomView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250)];
//    [customView setDataWithImgName:@"family.jpg" name:@"park" msg:@"테스트 테스트 테스트 줄넘겨야 하니까 더 길게 써야지"];
//    [self.view addSubview:customView];
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    MyCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
        cell = [[MyCustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    [cell setDataWithImgName:@"family.jpg" name:@"park" msg:[NSString stringWithFormat:@"%ld",indexPath.row]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
        
    return 200;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
