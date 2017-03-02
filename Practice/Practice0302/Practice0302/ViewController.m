//
//  ViewController.m
//  Practice0302
//
//  Created by 박찬웅 on 2017. 3. 2..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIGestureRecognizerDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (nonatomic) UIAlertController *alert;
@property (nonatomic) UIAlertAction *okAction;
@property (nonatomic) UIAlertAction *cancelAction;
@property (nonatomic) UIAlertAction *actionCamera;
@property (nonatomic) UIAlertController* actionSheet;
@property UIImagePickerController *cameraController;
@property UIButton *btn1;
@property (nonatomic, weak) UIButton *btn2;
@property (weak, nonatomic) IBOutlet UILabel *count;
@property (weak, nonatomic) IBOutlet UILabel *xy;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.btn1 = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
    [self.btn1 setTitle:@"Alert" forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn1 addTarget:self action:@selector(alert:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn1];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(200 , 50, 100, 50)];
    [btn2 setTitle:@"actionSheet" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(actionSheet:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    self.btn2= btn2;
    
    
    
    
    
    
    
    
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTap:)];
    tapGesture.delegate = self;
    tapGesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tapGesture];
    
    
    
    UIImagePickerController *cameraController = [[UIImagePickerController alloc]init];
    cameraController.sourceType = UIImagePickerControllerSourceTypeCamera;
    cameraController.allowsEditing = NO;
    cameraController.delegate = self;
    
    
     
    
    
    
    
    
    
    
    
    
    
    
    self.alert = [UIAlertController alertControllerWithTitle:@"테스트용" message:@"테스트 메세지입니다" preferredStyle:UIAlertControllerStyleAlert];
    
    
    self.actionSheet = [UIAlertController alertControllerWithTitle:@"액션 시트" message:@"카메라" preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    self.okAction = [UIAlertAction actionWithTitle:@"버튼이름OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"다음 페이지로 넘어가는게 가능해");
    }];
    
    self.actionCamera = [UIAlertAction actionWithTitle:@"카메라" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"카메라");
        //[cameraController showsCameraControls];
        [self presentViewController:cameraController animated:YES completion:nil];

    }];
    self.cancelAction = [UIAlertAction actionWithTitle:@"캔슬액션" style:UIAlertActionStyleCancel handler:nil];
    
    
    
    
    
    [self.alert addAction:self.okAction];
    [self.alert addAction:self.cancelAction];
    [self.actionSheet addAction:self.actionCamera];
    
    }

-  (void)alert:(UIButton *)sender
{
   [self presentViewController:self.alert animated:YES completion:nil];
}

//- (void)test {
//    [self.btn1 setTitle:@"test" forState:UIControlStateNormal];
//}

- (void)actionSheet:(UIButton *)sender
{
   [self presentViewController:self.actionSheet animated:YES completion:nil];
}
/////////////////제스쳐//////////아래부터
- (void)handleTap:(UITapGestureRecognizer *)sender
{
    NSLog(@"%2f , %2f",[sender locationInView:self.view].x,[sender locationInView:self.view].y);
    self.xy.text = NSStringFromCGPoint([sender locationInView:self.view]);
    [self.xy sizeToFit];
//    [self actionSheet];
}

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    
    self.count.text = [NSString stringWithFormat:@"%lu", (unsigned long)touch.tapCount];
    [self actionSheet];
    return YES;
}
/////////////////제스쳐///////////위까지




////////////////////픽커//////////아래부터
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    NSLog(@"info %@", info);
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imgView.image = image;
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
//{
//    [picker dismissViewControllerAnimated:YES completion:nil];
//}
////////////////////픽커///////////위까지


















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
