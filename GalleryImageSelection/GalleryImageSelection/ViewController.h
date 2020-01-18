//
//  ViewController.h
//  GalleryImageSelection
//
//  Created by MAC2 on 7/18/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) IBOutlet UIButton *btnTakePicture;
- (IBAction)btnTakePicture_TouchUpInside:(UIButton *)sender;

@end

