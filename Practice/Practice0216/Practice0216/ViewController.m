//
//  ViewController.m
//  Practice0216
//
//  Created by 박찬웅 on 2017. 2. 16..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDataSource,UITabBarDelegate>
@property NSArray *list;
@property NSArray *fruits;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *tv = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:tv];
    //tv.delegate = self;
    tv.dataSource = self;
    self.list = @[@"사과",@"배",@"딸기",@"포도",@"복숭아",@"키위",@"수박",@"멜론"];
    self.fruits = @[@"키위.png",@"수박.jpg",@"사과.png",@"멜론.png",@"배.jpg",@"딸기.jpg",@"포도.png",@"복숭아.jpg"];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    
    //cell.textLabel.text = [NSString stringWithFormat:@"%lu",indexPath.row+1];
    cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    
    return cell;
    
    
    
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    //
    //    if (cell == nil)
    //    {
    //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    //    }
    //
    //    cell.textLabel.text = [NSString stringWithFormat:@"%zd",indexPath.row];
    //
    //    
    //    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return self.list.count;

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
