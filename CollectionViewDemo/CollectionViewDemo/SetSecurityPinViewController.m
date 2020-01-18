//
//  SetSecurityPinViewController.m
//  CollectionViewDemo
//
//  Created by MAC2 on 7/23/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import "SetSecurityPinViewController.h"

@interface SetSecurityPinViewController ()

@end

@implementation SetSecurityPinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _maKeyArray = [[NSMutableArray alloc]init];
    _str=@"";
    clickCount=0;
    flag = false;
    self.img1.image = [UIImage imageNamed:@"set-pin-unselected"];
    self.img2.image = [UIImage imageNamed:@"set-pin-unselected"];
    self.img3.image = [UIImage imageNamed:@"set-pin-unselected"];
    self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];
    
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

#pragma mark CollectionView Methods

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 12;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    SecurityPinCollectionViewCell *cell = [self.collectionView1 dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (indexPath.row == 9) {
        cell.lblKey.text = @"Cancel";
        [_maKeyArray addObject:@"M"];
//        UIImageView *imgView = [[UIImageView alloc]initWithFrame:cell.contentView.frame];
//        imgView.image = [UIImage imageNamed:@"ic_back_dark"];
//        [cell.contentView addSubview:imgView];
    }
    else if (indexPath.row == 10) {
        cell.lblKey.text = @"0";
        [_maKeyArray addObject:[NSString stringWithFormat:@"%d",0]];
    }
    else if (indexPath.row == 11) {
        cell.lblKey.text = @"Done";
        [_maKeyArray addObject:@"B"];
//        UIImageView *imgView = [[UIImageView alloc]initWithFrame:cell.contentView.frame];
//        imgView.image = [UIImage imageNamed:@"ic_delete_dark"];
//        [cell.contentView addSubview:imgView];
    }
    else
        //cell.lblKey.text = [_maKeyArray objectAtIndex:indexPath.row];
    {
        cell.lblKey.text = [NSString stringWithFormat:@"%ld",indexPath.row+1];
        [_maKeyArray addObject:[NSString stringWithFormat:@"%ld",indexPath.row+1]];
    }
    
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    
    CGFloat height = self.collectionView1.frame.size.height;
    CGFloat width = self.view.frame.size.width;
    
    return CGSizeMake((width / 3)-20, (height * 0.2));
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (flag == false) {
        
        if (clickCount < 5) {
            
            clickCount = clickCount+1;
            
            if (indexPath.item == 9) {
                _str = @"";
                flag = false;
                NSLog(@"IndexPath : %ld",(long)indexPath.row);
                self.img1.image = [UIImage imageNamed:@"set-pin-unselected"];
                self.img2.image = [UIImage imageNamed:@"set-pin-unselected"];
                self.img3.image = [UIImage imageNamed:@"set-pin-unselected"];
                self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];

            }
            else if (indexPath.item == 10)
            {
                NSLog(@"IndexPath : %ld",(long)indexPath.row);
                NSString *temp = [NSString stringWithFormat:@"%i",0];
                _str =[ _str stringByAppendingString:temp];
            }
            else if (indexPath.item == 11)
            {
                if ( _str.length == 4) {
                    
                    NSLog(@"Your Entered Pin Is:%@",_str);
                    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:[NSString stringWithFormat:@"Do You Want To Save '%@' As Your Custom Pin?",_str] delegate:self cancelButtonTitle:NSLocalizedString(@"Yes", nil) otherButtonTitles:NSLocalizedString(@"No", nil) , nil];
                    alert.tag = 1;
                    [alert show];
                    
                }
                else
                {
                    clickCount=0;
                    _str = @"";
                    self.img1.image = [UIImage imageNamed:@"set-pin-unselected"];
                    self.img2.image = [UIImage imageNamed:@"set-pin-unselected"];
                    self.img3.image = [UIImage imageNamed:@"set-pin-unselected"];
                    self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];
                    [self displayErrorView:@"Please Enter Valid Pin!"];

                }
                NSLog(@"IndexPath : %ld",(long)indexPath.row);
            }
            else
            {
                NSLog(@"IndexPath : %ld",(long)indexPath.row);
                NSString *temp = [NSString stringWithFormat:@"%@",[_maKeyArray objectAtIndex:indexPath.row]];
                _str =[ _str stringByAppendingString:temp];
            }
            
            if (clickCount == 0) {
                
                _str = @"";
                self.img1.image = [UIImage imageNamed:@"set-pin-unselected"];
                self.img2.image = [UIImage imageNamed:@"set-pin-unselected"];
                self.img3.image = [UIImage imageNamed:@"set-pin-unselected"];
                self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];
            }
            else if (clickCount==1)
            {
                self.img1.image = [UIImage imageNamed:@"set-pin-selected"];
                self.img2.image = [UIImage imageNamed:@"set-pin-unselected"];
                self.img3.image = [UIImage imageNamed:@"set-pin-unselected"];
                self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];
            }
            else if (clickCount==2)
            {
                self.img1.image = [UIImage imageNamed:@"set-pin-selected"];
                self.img2.image = [UIImage imageNamed:@"set-pin-selected"];
                self.img3.image = [UIImage imageNamed:@"set-pin-unselected"];
                self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];
            }
            else if (clickCount == 3)
            {
                self.img1.image = [UIImage imageNamed:@"set-pin-selected"];
                self.img2.image = [UIImage imageNamed:@"set-pin-selected"];
                self.img3.image = [UIImage imageNamed:@"set-pin-selected"];
                self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];
            }
            else
            {
                self.img1.image = [UIImage imageNamed:@"set-pin-selected"];
                self.img2.image = [UIImage imageNamed:@"set-pin-selected"];
                self.img3.image = [UIImage imageNamed:@"set-pin-selected"];
                self.img4.image = [UIImage imageNamed:@"set-pin-selected"];
            }
        }
        else
        {
            _str = @"";
            clickCount = 0;
            [self displayErrorView:@"Please Enter Valid Pin!\nPin Should Not Be Greater Than Four Digits."];
            self.img1.image = [UIImage imageNamed:@"set-pin-unselected"];
            self.img2.image = [UIImage imageNamed:@"set-pin-unselected"];
            self.img3.image = [UIImage imageNamed:@"set-pin-unselected"];
            self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];
        }
        
    }
    else
    {
       
    }

}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(alertView.tag == 1)
    {
        if (buttonIndex == 0) {
        
            [[NSUserDefaults standardUserDefaults] setObject:_str forKey:@"customPin"];
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Pin Saved Successfully!" delegate:self cancelButtonTitle:NSLocalizedString(@"Ok", nil) otherButtonTitles:nil];
            alert.tag = 2;
            [alert show];
            _str = @"";
            flag = false;
            clickCount = 0;
            self.img1.image = [UIImage imageNamed:@"set-pin-unselected"];
            self.img2.image = [UIImage imageNamed:@"set-pin-unselected"];
            self.img3.image = [UIImage imageNamed:@"set-pin-unselected"];
            self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];
        }
        else
        {
            _str = @"";
            flag = false;
            clickCount = 0;
            self.img1.image = [UIImage imageNamed:@"set-pin-unselected"];
            self.img2.image = [UIImage imageNamed:@"set-pin-unselected"];
            self.img3.image = [UIImage imageNamed:@"set-pin-unselected"];
            self.img4.image = [UIImage imageNamed:@"set-pin-unselected"];
        }
    }
    else
    {
        
    }
}

#pragma mark Error Message

-(void)displayErrorView:(NSString*)strError
{
    
    [CRToastManager showNotificationWithOptions:[self setDataToast:strError]
                                 apperanceBlock:^(void) {
                                     ////NSLog(@"Appeared");
                                 }
                                completionBlock:^(void) {
                                    ////NSLog(@"Completed");
                                }];
    
}
- (NSDictionary*)setDataToast:(NSString*)strMessage
{
    
    NSMutableDictionary *options =[[NSMutableDictionary alloc]init];
    [options setObject:@(0) forKey:kCRToastAnimationInDirectionKey];
    [options setObject:@(0) forKey:kCRToastAnimationInTypeKey];
    [options setObject:@(0) forKey:kCRToastAnimationOutDirectionKey];
    [options setObject:@(0) forKey:kCRToastAnimationOutTypeKey];
    [options setObject:[UIImage imageNamed:@"alert.png"] forKey:kCRToastImageKey];
    [options setObject:@(0) forKey:kCRToastNotificationPresentationTypeKey];
    [options setObject:@(1) forKey:kCRToastNotificationTypeKey];
    [options setObject:@(0) forKey:kCRToastTextAlignmentKey];
    [options setObject:strMessage forKey:kCRToastTextKey];
    [options setObject:@(2) forKey:kCRToastTimeIntervalKey];
    //  [options setObject: [NSNumber numberWithBool:isStatusBarKey] forKey:kCRToastUnderStatusBarKey]; //Set boolean 0/1
    
    if([[UIDevice currentDevice] userInterfaceIdiom]==UIUserInterfaceIdiomPhone)
    {
        if([[UIDevice currentDevice].systemVersion floatValue] >= 8.0)
        {
            if([UIScreen mainScreen].nativeScale==3.00)
            {
                BOOL isStatusBarKey=FALSE;
                [options setObject: [NSNumber numberWithBool:isStatusBarKey] forKey:kCRToastUnderStatusBarKey];//Set boolean 0/1
            }
            else
            {
                BOOL isStatusBarKey=TRUE;
                [options setObject: [NSNumber numberWithBool:isStatusBarKey] forKey:kCRToastUnderStatusBarKey];//Set boolean 0/1
            }
        }
        else
        {
            BOOL isStatusBarKey=TRUE;
            [options setObject: [NSNumber numberWithBool:isStatusBarKey] forKey:kCRToastUnderStatusBarKey];//Set boolean 0/1
        }
        
    }
    else
    {
        BOOL isStatusBarKey=TRUE;
        [options setObject: [NSNumber numberWithBool:isStatusBarKey] forKey:kCRToastUnderStatusBarKey];//Set boolean 0/1
        
    }
    
    return [NSDictionary dictionaryWithDictionary:options];
}

@end
