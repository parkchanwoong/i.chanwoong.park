//
//  ViewController.m
//  PickerViewPrac0318
//
//  Created by 박찬웅 on 2017. 3. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate>
//@property NSArray *activities;
//@property NSArray *feelings;
@property (weak, nonatomic) IBOutlet UITextField *notesField;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    activities = [[NSArray alloc]initWithObjects:@"sleeping",@"eating",@"working",@"thinking",@"crying",@"begging",@"leaving",@"shopping",@"hello worlding", nil];
    
    feelings = [[NSArray alloc]initWithObjects:@"awesome",@"sad",@"happy",@"ambivalent",@"nauseous",@"psyched",@"confused",@"hopeful",@"anxious", nil];
    
    
    
    
}




- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component // 각 컴포넌트 별로 행의 갯수
{
    if (component == 0)
    {
        return [activities count];
    }
    else
    {
        return [feelings count];
    }
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
        case 0:
            return [activities objectAtIndex:row];
        case 1:
            return [feelings objectAtIndex:row]; //해당위치의 문자열을 반환, 첫 번째 줄이 인덱스 0, 두 번째 줄이 1 ....
    }
    return nil;
}
- (IBAction)sendButtonTapped:(UIButton *)sender
{
    
    NSString *theMessage = [NSString stringWithFormat:@"I'm %@ and feeling %@ about it",
                            [activities objectAtIndex:[self.pickerView selectedRowInComponent:0]],
                            [feelings objectAtIndex:[self.pickerView selectedRowInComponent:1]]];
    NSLog(@"%@", theMessage);
    
    
    
}

- (IBAction)textFieldDoneEditing:(UITextField *)sender
{
    [sender resignFirstResponder];
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
