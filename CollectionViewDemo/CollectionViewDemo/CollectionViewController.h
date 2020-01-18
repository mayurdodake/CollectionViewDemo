//
//  CollectionViewController.h
//  CollectionViewDemo
//
//  Created by MAC2 on 7/23/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"
#import "ViewController.h"


@interface CollectionViewController : UICollectionViewController<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic,retain) NSString *imgName;
@property (nonatomic,retain) NSMutableArray *maImgArray;

@end
