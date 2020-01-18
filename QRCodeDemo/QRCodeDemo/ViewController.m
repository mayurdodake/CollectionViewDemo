//
//  ViewController.m
//  QRCodeDemo
//
//  Created by MAC2 on 7/26/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGenrateQRCode:(UIButton *)sender {
    
   
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"fvctosvc"]) {
        
        QRCodeViewController *objVC = [segue destinationViewController];
        objVC.strName = _txtName.text;
        objVC.strEmail = _txtEmail.text;
        objVC.strMobileNum = _txtContact.text;
    }
}
@end
