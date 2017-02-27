//
//  SecondViewController.m
//  Practice0227
//
//  Created by 박찬웅 on 2017. 2. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomTableViewCell.h"
@interface SecondViewController ()
<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *Tv;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        //forIndexPath 는 스토리보드에서 가져오는것
        cell.textLabel.text = @"1";
        
        return cell;
    }
    else
    {
        CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ttCell" forIndexPath:indexPath];
        cell.textLabel.text = @"ff";
        return cell;
    }
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
