//
//  ViewController.h
//  Test11
//
//  Created by MAC2 on 6/4/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController1.h"
#import "ViewController2.h"
#import "Global.h"

@interface ViewController : UIViewController
{
 
    int count1;
    UIStoryboard *globalStoryboardObject;
    NSTimer *timer;
}
@property (strong, nonatomic) IBOutlet UILabel *lbl;

@end

