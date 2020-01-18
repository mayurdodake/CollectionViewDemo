//
//  QRCodeViewController.m
//  QRCodeDemo
//
//  Created by MAC2 on 7/26/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import "QRCodeViewController.h"

@interface QRCodeViewController ()

@end

@implementation QRCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *strFinal = [NSString stringWithFormat:@"Name:%@\nEmail:%@\nMobile Number:%@",_strName,_strEmail,_strMobileNum];
    
    NSData *strData = [strFinal dataUsingEncoding:NSISOLatin1StringEncoding];
    
    CIFilter *strFilter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    
    [strFilter setValue:strData forKey:@"inputMessage"];
    
    CIImage *imageQR = strFilter.outputImage;
    
    _imgView.image = [UIImage imageWithCIImage:imageQR];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
