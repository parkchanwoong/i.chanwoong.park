//
//  ViewController.m
//  TableViewExample
//
//  Created by youngmin joo on 2016. 6. 6..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()
<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
 

    //*************HEADER VIEW*****************
    UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"titleView.jpg"]];
    [imgView setFrame:CGRectMake(100, 100, 100, 100)];
    tableView.tableHeaderView = imgView;
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [[DataCenter defaultData] numberOfSection];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[DataCenter defaultData] numberOfRowInSection:section];
}

//cell만들기
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //cell 객체 생성(Reuse)
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        //cell 객체 생성(alloc)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    //data불러오기
    NSArray *sectionAnimals = [[DataCenter defaultData] rowDatasOfSection:indexPath.section];
    
    //text 삽입
    NSString *animal = [sectionAnimals objectAtIndex:indexPath.row];
    cell.textLabel.text = animal;
    //이미지 삽입
    cell.imageView.image = [UIImage imageNamed:[[DataCenter defaultData] imageNameWithAnimal:animal]];
    //악세서리 뷰 지정
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    
    return cell;
}


//섹션 타이틀 지정
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSArray *sectionTitles = [[DataCenter defaultData] sectionTitles];
    return [sectionTitles objectAtIndex:section];
}


#pragma mark - Table view data delegate

//셀 선택시 행동
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UITableViewCell *selctedCell = [tableView cellForRowAtIndexPath:indexPath];
    
    NSLog(@"%@이 선택 되었습니다.",selctedCell.textLabel.text);
}

//index list만들기
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return [[DataCenter defaultData] sectionTitles];
}


//cell 높이 설정
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //임의 사이즈
    return 80;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
