//
//  ViewController.m
//  CollectionViewPrac0323
//
//  Created by 박찬웅 on 2017. 3. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//


@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    SecondViewController *secondViewController = [SecondViewController new];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section)
    {
        case 0:
        {
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
            
            cell.textLabel.text = @"하하핫!";
            [cell setAccessoryType:UITableViewCellAccessoryDetailButton];
            return cell;
        }
            
            break;
            
        default:
        {
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            
            cell.textLabel.text = @"재밌당!";
            return cell;
        }
            break;
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
        {
            return 2;
        }
            break;
            
        default:
        {
            return 5;
        }
            break;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section)
    {
        case 0:
            return 100;
            break;
            
        default:
            return 40;
            break;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        UIStoryboard *story = [UIStoryboard storyboardWithName:@"SecondView" bundle:nil];
        SecondViewController *svc = [story instantiateViewControllerWithIdentifier:@"SecondViewController"];
        [self presentViewController:svc animated:YES completion:nil];
    }
   
    
}
@end
