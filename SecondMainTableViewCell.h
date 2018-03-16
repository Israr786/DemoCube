//
//  SecondMainTableViewCell.h
//  DemoCube
//
//  Created by Apple on 3/16/18.
//  Copyright © 2018 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondMainTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UICollectionView *clCollectionView;
- (void)setCollectionViewDataSourceDelegate:(id<UICollectionViewDataSource, UICollectionViewDelegate>)dataSourceDelegate indexPath:(NSIndexPath *)indexPath;


@end
