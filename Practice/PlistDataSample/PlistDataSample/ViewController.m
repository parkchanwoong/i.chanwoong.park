//
//  ViewController.m
//  PlistDataSample
//
//  Created by youngmin joo on 2017. 3. 2..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray *dataList;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Ver1
//     self.dataList = [[DataCenter singleton] loadFriendListVer1];
    //Ver2
    self.dataList = [[DataCenter singleton] loadFriendListVer2];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    if (self.dataList.count < [DataCenter singleton].friendCount) {
        self.dataList = [[DataCenter singleton] loadFriendListVer2];
        [self.tableView reloadData];
    }
}

   //step1
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSDictionary *person = self.dataList[indexPath.row];
    
    cell.textLabel.text = person[@"name"];
    
    return  cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
