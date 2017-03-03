//
//  ViewController2.m
//  Practice0303
//
//  Created by 박찬웅 on 2017. 3. 3..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController2.h"
#import "DataCenter.h"
#import "CusTomTableViewCell.h"
@interface ViewController2 ()


@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CusTomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    NSDictionary *result = [[DataCenter sharedInstance].fileList objectAtIndex:indexPath.row];
    cell.labelTop.text = [result objectForKey:@"Name"];
    cell.labelBottom.text = [result objectForKey:@"PhoneNumber"];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
