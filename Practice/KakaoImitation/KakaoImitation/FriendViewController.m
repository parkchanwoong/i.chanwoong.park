//
//  FriendViewController.m
//  KakaoImitation
//
//  Created by 박찬웅 on 2017. 2. 22..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "FriendViewController.h"
#import "DataCenter.h"
@interface FriendViewController ()
<UITableViewDataSource,UITableViewDelegate>

@end

@implementation FriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"친구";
    
  

    
    UITableView *tableview = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStyleGrouped];

    
    tableview.delegate = self;
    tableview.dataSource = self;
    [self.view addSubview:tableview];
    
}


/*
- (void)viewWillAppear:(BOOL)animated   //네비게이션 바 보이게
{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
*/

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
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    switch (indexPath.section) {
        case 0:
            if (indexPath.row == 0)
            {
                cell.textLabel.text = @"자동 친구 추가";
                
                UISwitch *temp = [[UISwitch alloc] init];
                cell.accessoryView = temp;
                [temp addTarget:self action:@selector(autoFrinedsAdd:) forControlEvents:UIControlEventValueChanged];
                temp.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"temp"];
            }
            else
            {
                cell.textLabel.text = @"친구 목록 새로고침";
            }
            break;
        case 1:
        {
            
            cell.textLabel.text = @"친구 추천 허용";
//            [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            UISwitch *temp1 = [[UISwitch alloc]init];
            temp1.on = [[DataCenter sharedData] switchOnOff];
            [temp1 addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
            cell.accessoryView = temp1;
           
        }
        break;
            case 2:
        {
            cell.textLabel.text = @"친구 이름 동기화";
            
            UISwitch *temp2 = [[UISwitch alloc]init];
            [temp2 targetForAction:@selector(switchOnOff) withSender:self];
            cell.accessoryView = temp2;
        }
            break;
            default:
            if (indexPath.row == 0) {
//                cell.textLabel.text = @"숨김친구 관리";
                [cell.textLabel setText: @"숨김친구 관리"];
//                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
                
            
            
            }
            else
            {
                cell.textLabel.text = @"차단친구 관리";
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                
            }
            break;
    }
    
    if ([cell.accessoryView isMemberOfClass:[UISwitch class]]) //UISwitch 클래스의 멤버가 있으면
    {
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone]; //SelectionStyleNone 눌리긴 하지만 표시 X
    }
    
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    NSString *foot1 = @"내 연락처에서 카카오톡을 사용하는 친구를 자동으로 친구목록에 추가합니다. 수동으로 추가하려면 새로고침 버튼을 눌러주세요";
    NSString *foot2 = @"알 수도 있는 친구를 추천받고, 나를 다른 친구에게 추천해줍니다.";
    NSString *foot3 = @"카카오톡 앱의 친구 이름을 pc버전, 카카오 게임 등에서도 동일하게 보여줍니다.";
    switch (section)
    {
        case 0:
            
            return foot1;
            break;
            
        case 1:
            
            return foot2;
            break;
            
        case 2:
            return foot3;
            break;
    }
    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *head3 = @"친구 관리";
    switch (section)
    {
        case 3:
            return head3;
            break;
    }
    return nil;
}



                                    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"didSelectRowAtIndexPath : %@", indexPath);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)switchChanged:(UISwitch *)sender {
    [[DataCenter sharedData] setSwitchOnOff:sender.on];
}
- (void)autoFrinedsAdd:(UISwitch *)sender
{
    [[NSUserDefaults standardUserDefaults] setBool:sender.on forKey:@"temp"];
}

@end
