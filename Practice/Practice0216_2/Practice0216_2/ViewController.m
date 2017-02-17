//
//  ViewController.m
//  Practice0216_2
//
//  Created by 박찬웅 on 2017. 2. 16..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDataSource,UITableViewDelegate>
@property NSArray *fruits;
@property NSArray *fruitsPic;
@property NSArray *sectionTitle;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *tv = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];
    self.fruits = @[@"사과",@"배",@"딸기",@"포도",@"복숭아",@"키위",@"수박",@"멜론"];
    self.fruitsPic = @[@"사과",@"배.jpg",@"딸기.jpg",@"포도",@"복숭아.jpg",@"키위",@"수박.jpg",@"멜론"];
    self.sectionTitle = @[@"A",@"B"];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.fruits.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        //UISwitch *switcher = [[UISwitch alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
    
        
      cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    
    cell.textLabel.text = [self.fruits objectAtIndex:indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:[self.fruitsPic objectAtIndex:indexPath.row]];
    
    
    //악세서리 타입
    
    //cell.accessoryType = UITableViewCellAccessoryDetailButton;
    //cell.accessoryType = UITableViewCellStyleValue1;
    //cell.accessoryType = UITableViewCellStyleValue2;
    cell.accessoryType = UITableViewCellStyleSubtitle;
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"%@ 선택되었습니다",selectedCell.textLabel.text);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    
    return self.sectionTitle.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *index = [self.sectionTitle objectAtIndex:section];
    return index;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
