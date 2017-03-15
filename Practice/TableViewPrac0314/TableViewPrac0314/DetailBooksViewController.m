//
//  DetailBooksViewController.m
//  TableViewPrac0314
//
//  Created by 박찬웅 on 2017. 3. 14..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DetailBooksViewController.h"
#import "DataCenter.h"

@interface DetailBooksViewController ()



@end

@implementation DetailBooksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = [[DataCenter shared].booksName objectAtIndex:self.cellIndexPath];
    self.detailName.text = [[DataCenter shared].booksName objectAtIndex:self.cellIndexPath];
    self.detailAuthor.text = [[DataCenter shared].author objectAtIndex:self.cellIndexPath];
    self.detailImage.image = [UIImage imageNamed:[[DataCenter shared].booksImages objectAtIndex:self.cellIndexPath]];
    //cell.booksImage.image = [UIImage imageNamed:[[DataCenter shared].booksImages objectAtIndex:indexPath.row]];
    self.story.text = [[DataCenter shared].story objectAtIndex:self.cellIndexPath];
    [self.story sizeToFit];
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
