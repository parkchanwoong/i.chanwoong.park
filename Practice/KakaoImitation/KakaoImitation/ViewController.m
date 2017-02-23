//
//  ViewController.m
//  KakaoImitation
//
//  Created by 박찬웅 on 2017. 2. 22..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "FriendViewController.h"
@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>

//@property UITableViewCell *cell; 셀 높이 알아보기용


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"설정";
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:71 / 255.0 green:54 / 255.0 blue: 54 / 255.0 alpha:1]];
    
    UITableView *tableview = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    tableview.delegate = self;
    tableview.dataSource = self;
    [self.view addSubview:tableview];
    }
/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 11;
}
*/


/*
- (void)viewWillAppear:(BOOL)animated //네비게이션 바 숨기기
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
*/


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    /*
    if (section == 0)
    {
        return 3;
    }
    else if(section == 1)
    {
        return 7;
    }
    else
    {
        return 1;
    }
    */
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
  
   
    cell.textLabel.text = @"친구";
    cell.imageView.image = [UIImage imageNamed:@"human"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
   
    //NSLog(@"%lf", cell.frame.size.height);  셀 높이 알아보기용
    //**********************************
 /*   switch (indexPath.section) {
   
        case 0:
            if (indexPath.row == 0)
            {
                cell.textLabel.text = @"공지사항";
            }
            
            else if(indexPath.row == 1)
            {
                cell.textLabel.text = @"실험실";
            }
            else
            {
                cell.textLabel.text = @"버전정보";
            }
            break;
        case 1:
            if (indexPath.row == 0)
            {
                cell.textLabel.text = @"개인/보안";
            }
            else if(indexPath.row == 1)
            {
                cell.textLabel.text = @"알림";
            }
            else if (indexPath.row == 2)
            {
                cell.textLabel.text = @"친구";
  
            }
            else if (indexPath.row == 3)
            {
                cell.textLabel.text = @"채팅";
            }
            else if (indexPath.row == 4)
            {
                cell.textLabel.text = @"화면";
            }
            else if (indexPath.row == 5)
            {
                cell.textLabel.text = @"게임별";
            }
            else if (indexPath.row == 6)
            {
                cell.textLabel.text = @"기타";
            }
            break;
        case 2:
            if (indexPath.row == 0)
            {
                cell.textLabel.text = @"고객센터/도움말";
            }
    }
    return cell;
  
}*/
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    FriendViewController *FVC = [[FriendViewController alloc] init];
    [self.navigationController pushViewController:FVC animated:YES];
}


 

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
