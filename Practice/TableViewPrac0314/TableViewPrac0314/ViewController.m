//
//  ViewController.m
//  TableViewPrac0314
//
//  Created by 박찬웅 on 2017. 3. 14..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
#import "DataCenter.h"
#import "DetailBooksViewController.h"
@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
//닙 파일 연결
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"CustomTableViewCell"];
    

                                
                                
    
}


//셀의 갯수
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[DataCenter shared] booksCounts];

}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell"forIndexPath:indexPath];
    cell.label1.text = [[DataCenter shared].booksName objectAtIndex:indexPath.row];
    [cell.label1 sizeToFit];
    cell.label2.text = [[DataCenter shared].author objectAtIndex:indexPath.row];
    [cell.label2 sizeToFit];
    
    cell.booksImage.image = [UIImage imageNamed:[[DataCenter shared].booksImages objectAtIndex:indexPath.row]];
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
        return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    DetailBooksViewController *dvc = [[DetailBooksViewController alloc]initWithNibName:@"DetailBooksViewController" bundle:[NSBundle mainBundle]];
//    [self presentViewController:dvc animated:YES completion:nil];
//    [self.navigationController pushViewController:dvc animated:YES];
    [self performSegueWithIdentifier:@"DetailSegue" sender:[self.tableView cellForRowAtIndexPath:indexPath]];
    

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"DetailSegue"]) {
        DetailBooksViewController *dvc = segue.destinationViewController;
        dvc.title = [[DataCenter shared].booksName objectAtIndex:[[self.tableView indexPathForCell:sender] row]];
        
    }
}


//셀의 높이 지정
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell"];
    
    return cell.bounds.size.height;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
