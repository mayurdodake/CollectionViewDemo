//
//  ViewController1.h
//  Test11
//
//  Created by MAC2 on 6/4/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController1 : UIViewController
{
    NSTimer *timer;
    int count1;
    UIStoryboard *globalStoryboardObject;
}
@property (strong, nonatomic) IBOutlet UILabel *lbl;

@end
