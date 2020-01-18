//
//  ViewController.m
//  GIFImage
//
//  Created by MAC2 on 8/10/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //  By Mayur Dodake 10 Aug 2018
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"fail" withExtension:@"gif"];
    self.imgView.image = [UIImage animatedImageWithAnimatedGIFURL:url];
//        self.imgView.animationDuration = 1.0f;
//        self.imgView.animationRepeatCount = 0;
//        [self.imgView startAnimating];
 
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(stop) userInfo:nil repeats:NO];
    
//    self.imgView.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"fail.gif"], nil];
//    self.imgView.animationDuration = 10.0f;
//    self.imgView.animationRepeatCount = 10;
//    [self.imgView startAnimating];

}

-(void)stop
{
    self.imgView.image = [UIImage imageNamed:@"icon"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
