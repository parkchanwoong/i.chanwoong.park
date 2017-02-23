//
//  SettingViewController.m
//  SettingExample
//
//  Created by youngmin joo on 2017. 2. 22..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "SettingViewController.h"
#import "SettingCustomCell.h"
#import "SettingDetailViewController.h"
#import "DataCenter.h"

@interface SettingViewController ()
<UITableViewDelegate, UITableViewDataSource, SettingCustomCellDelegate>

@property NSDictionary *data;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self naviBarSet];
    [self dataSet];
    UITableView *mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    mainTableView.delegate = self;
    mainTableView.dataSource = self;
    [self.view addSubview:mainTableView];
    
    
}

- (void)naviBarSet
{
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    title.textColor = [UIColor darkGrayColor];
    title.text = @"Setting";
    title.font = [UIFont boldSystemFontOfSize:17];
    title.textAlignment = NSTextAlignmentCenter;
    [self.navigationItem setTitleView:title];
    
}

/*************데이터 설정 부분******************/
//기본 데이터 설정
- (void)dataSet
{
    NSArray *section = @[@"First",@"Second",@"Third"];
    NSArray *firstList = @[@"기본 스타일 메뉴", @"디테일 스타일", @"스위치 메뉴"];
    NSArray *secondList = @[@"친구찾기", @"친구 리스트", @"친구 추가"];
    NSArray *thridList = @[@"메뉴", @"이름 만들기", @"어렵다"];
    
    self.data = @{
                    @"sectionData" : section,
                    @"rowData" : @[
                                    firstList,
                                    secondList,
                                    thridList
                                  ]
                };
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSArray *sectionList = [self.data objectForKey:@"sectionData"];
    
    return sectionList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *rowData = [self.data objectForKey:@"rowData"];
    NSArray *rowList = [rowData objectAtIndex:section];
    return rowList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *rowData = [self.data objectForKey:@"rowData"];
    NSArray *rowList = [rowData objectAtIndex:indexPath.section];
    NSInteger row = indexPath.row;
    
    if (indexPath.row == 2) {
        SettingCustomCell *customCell = [tableView dequeueReusableCellWithIdentifier:@"customCell"];
        
        if (customCell == nil) {
            customCell = [[SettingCustomCell alloc ]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"customCell"];
            customCell.delegate  = self;
        }
        customCell.indexPath = indexPath;
        customCell.textLabel.text = [rowList objectAtIndex:row];
        return customCell;
    }else
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc ]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        
        cell.textLabel.text = [rowList objectAtIndex:row];
        if (row == 1) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.selectionStyle = UITableViewCellSelectionStyleGray;
        }else
        {//default
            //눌렸을때 상태
            cell.accessoryType = UITableViewCellAccessoryNone;
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        return cell;
    }
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSArray *sectionList = [self.data objectForKey:@"sectionData"];
    return [sectionList objectAtIndex:section];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 1) {
        //다음 페이지 이동
        SettingDetailViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingDetailViewController"];
        [self.navigationController pushViewController:detailVC animated:YES];
    }
}

//스위치에 따른 행동
- (void)settingCustomCell:(SettingCustomCell *)cell didChangedValue:(BOOL)value
{
    NSString *answer = value ? @"ON" : @"OFF";
    
    
    NSArray *rowData = [self.data objectForKey:@"rowData"];
    NSArray *rowList = [rowData objectAtIndex:cell.indexPath.section];
    NSLog(@"%@의 스위치가 %@되었습니다.",[rowList objectAtIndex:cell.indexPath.row], answer);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
