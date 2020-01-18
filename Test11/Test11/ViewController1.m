//
//  ViewController1.m
//  Test11
//
//  Created by MAC2 on 6/4/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (!timer) {
      //  globalTabCount++;
        count1=0;
        _lbl.text=[NSString stringWithFormat:@"Tab2 Lable 1"];
        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(targetMethod) userInfo:nil repeats:YES];
    }
    
}

-(void)targetMethod
{
    
    count1++;
    if(count1==20)
    {
//        ViewController1 *VC1 = [globalStoryboardObject instantiateViewControllerWithIdentifier:@"ViewController1_ID"];
//        [self presentViewController:VC1 animated:YES completion:nil];
        [timer invalidate];
        [self.tabBarController setSelectedIndex:2];
    }
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
