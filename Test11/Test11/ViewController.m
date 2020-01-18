//
//  ViewController.m
//  Test11
//
//  Created by MAC2 on 6/4/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
//    if (globalTabCount<9) {
//        globalTabCount++;
        if (!timer) {
            count1=0;
            _lbl.text=[NSString stringWithFormat:@"Tab1 Lable 1"];
            [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(targetMethod) userInfo:nil repeats:YES];
        }
//    }
//    else
//    {
//        
//        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Test is Over!!!" delegate:self cancelButtonTitle:NSLocalizedString(@"Cancel", nil)  otherButtonTitles:NSLocalizedString(@"Ok", nil), nil];
//        [alert show];
//        [timer invalidate];
//    }
    
}

-(void)targetMethod
{
    
    count1++;
    if(count1==20)
    {
        [timer invalidate];
//        ViewController1 *VC1 = [globalStoryboardObject instantiateViewControllerWithIdentifier:@"ViewController1_ID"];
//        [self addChildViewController:VC1];
//        VC1.view.frame=self.view.bounds;
//        [self.view addSubview:VC1.view];
//        [VC1 didMoveToParentViewController:self];
        [self.tabBarController setSelectedIndex:1];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
