//
//  CollectionViewController.m
//  CollectionViewDemo
//
//  Created by MAC2 on 7/23/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import "CollectionViewController.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    self.collectionView.delegate=self;
    self.collectionView.dataSource=self;
    _maImgArray = [[NSMutableArray alloc]initWithObjects:@"one",@"two",@"three",@"four",@"five",@"one",@"two",@"three",@"four",@"five", nil];
    
    // Register cell classes
  
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
   // [self.collectionView registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return _maImgArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.imgview.image = [UIImage imageNamed:[_maImgArray objectAtIndex:indexPath.row]];
    cell.lbl.text =[_maImgArray objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    
    CGFloat height = self.view.frame.size.height;
    CGFloat width = self.view.frame.size.width;
//    return CGSizeMake(width * 0.4, height * 0.4);
    return CGSizeMake((width * 0.5) - 20, height * 0.3);
    // OR
    
 //   return CGSizeMake((collectionView.frame.size.width / 3)-20, 130);

}

//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
//{
//    return CGSizeMake(20, 20);
//}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
   
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    NSIndexPath *indexPath = [[self.collectionView indexPathsForSelectedItems] lastObject];
    
    if ([segue.identifier isEqualToString:@"fvctosvc"]) {
        
        ViewController *objViewController = [segue destinationViewController];
        
        objViewController.imgName = [_maImgArray objectAtIndex:indexPath.row];
        
    }
    
}


@end
