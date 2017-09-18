//
//  ViewController.m
//  DrinkMixer
//
//  Created by 박찬웅 on 2017. 3. 19..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "DrinkDetailViewController.h"
#import "DrinkConstants.h"

@interface ViewController ()
<UITableViewDataSource,UITableViewDelegate>
@property NSMutableArray *tempArray;
@property NSDictionary *drink;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addButtonItem;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"DrinkMixer" ofType:@"plist"];
    NSMutableArray *temp = [[NSMutableArray alloc]initWithContentsOfFile:path];
    
    self.tempArray = temp;
    
//    self.navigationItem.rightBarButtonItem = self.addButtonItem;
    
//    [[DrinkDetailViewController alloc] initWithNibName:@"DrinkDetailViewController" bundle:nil];
    
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tempArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [[self.tempArray objectAtIndex:indexPath.row] objectForKey:NAME_KEY];
    cell.accessoryType  = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
- (IBAction)addButtonPressed:(UIBarButtonItem *)sender
{
    NSLog(@"Add button pressed!");
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DrinkDetailViewController *drinkDetailViewController = [[DrinkDetailViewController alloc]initWithNibName:@"DrinkDetailViewController" bundle:nil];
    
    
    
    [self.navigationController pushViewController:drinkDetailViewController animated:YES];
    
    
}
@end
