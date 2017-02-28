//
//  FriendViewController.m
//  Practice0227_2
//
//  Created by 박찬웅 on 2017. 2. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "FriendViewController.h"

@interface FriendViewController ()
<UITableViewDataSource,UITableViewDelegate>

@property UITableView *TV;

@end

@implementation FriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0)
    {
        return 2;
    }
    else if(section == 1)
    {
        return 1;
    }
    else if (section == 2)
    {
        return 1;
    }
    else
    {
        return 2;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    switch (indexPath.section) {
        case 0:
            if(indexPath.row == 0)
            {
            cell.textLabel.text = @"자동 친구 추가";
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            }
            else
            {
                cell.textLabel.text = @"친구 목록 새로고침";
            }
            break;
        case 1:
            cell.textLabel.text = @"친구 추천 허용";
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        case 2:
            cell.textLabel.text = @"친구 이름 동기화";
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        default:
            if (indexPath.row == 0)
            {
                
                [cell.textLabel setText: @"숨김친구 관리"];
                [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
            }
            else
            {
                cell.textLabel.text = @"차단친구 관리";
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                
            }
            
            break;
    }
    
    if(cell.accessoryType == UITableViewCellAccessoryDisclosureIndicator)
    {
        
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    else
    {
        [cell setSelectionStyle:UITableViewCellSelectionStyleDefault];
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"didSelectRowAtIndexPath 발동");
}

@end
