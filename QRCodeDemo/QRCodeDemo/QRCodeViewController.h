//
//  QRCodeViewController.h
//  QRCodeDemo
//
//  Created by MAC2 on 7/26/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QRCodeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) NSString *strName, *strEmail, *strMobileNum;

@end
