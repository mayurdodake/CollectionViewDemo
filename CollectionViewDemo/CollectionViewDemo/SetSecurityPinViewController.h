//
//  SetSecurityPinViewController.h
//  CollectionViewDemo
//
//  Created by MAC2 on 7/23/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecurityPinCollectionViewCell.h"
#import "CRToast.h"

@interface SetSecurityPinViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
{
    BOOL flag;
    int clickCount;
}
@property (strong, nonatomic) IBOutlet UIImageView *img1;

@property (strong, nonatomic) IBOutlet UIImageView *img2;

@property (strong, nonatomic) IBOutlet UIImageView *img3;

@property (strong, nonatomic) IBOutlet UIImageView *img4;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView1;

@property (nonatomic,retain) NSMutableArray *maKeyArray;

@property (nonatomic,retain) NSString *str;

@end
