//
//  ViewController.m
//  SearchBarPractice0410
//
//  Created by 박찬웅 on 2017. 4. 10..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate,UISearchDisplayDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property UISearchController *searchController;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;


@property (strong, nonatomic) NSMutableArray *resultData;
@property (strong, nonatomic) NSArray *allData;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
    
    
    self.allData = @[@"영어책 한권 외워봤니? ",@"돈이 보이는 손가락 회계",@"abc",@"abcd",@"abcde",@"a",@"ab",@"abc",@"abcd",@"abcde",@"a",@"ab",@"abc",@"abcd",@"abcde"];
    
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    self.resultData = [NSMutableArray arrayWithCapacity:self.allData.count];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.allData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    cell.bookCover.image = [UIImage imageNamed:@"namiya.jpg"];
    cell.titleLabel.text = self.allData[indexPath.row];
    cell.authorLabel.text = @"히가시노 게이고 | 현대문학";
    
    
//    cell.textLabel.text = @"이건 어디나오냐";
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 129;
}
@end
