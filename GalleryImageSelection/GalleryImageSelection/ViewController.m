//
//  ViewController.m
//  GalleryImageSelection
//
//  Created by MAC2 on 7/18/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapDetected)];
    
    singleTap.numberOfTapsRequired = 1;
    
    [_imageView setUserInteractionEnabled:YES];
    [_imageView addGestureRecognizer:singleTap];
    
    _btnTakePicture.layer.cornerRadius = 10;
    
}

-(void)tapDetected
{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc]init];
    
    pickerController.delegate = self;   
    
    [self presentViewController:pickerController animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary<NSString *,id> *)editingInfo
{
    self.imageView.image = image;
    [self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTakePicture_TouchUpInside:(UIButton *)sender {
    
    UIImagePickerController *pickerController = [[UIImagePickerController alloc]init];
    
    pickerController.delegate = self;
    
    pickerController.allowsEditing = YES;
    
    pickerController.sourceType = UIImagePickerControllerCameraDeviceFront;
    
    [self presentViewController:pickerController animated:YES completion:nil];
    
}
@end
