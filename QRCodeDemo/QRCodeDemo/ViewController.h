//
//  ViewController.h
//  QRCodeDemo
//
//  Created by MAC2 on 7/26/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QRCodeViewController.h"

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *txtName;
@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UITextField *txtContact;
- (IBAction)btnGenrateQRCode:(UIButton *)sender;
@end

