//
//  MainTableViewCell.m
//  DemoCube
//
//  Created by Apple on 3/5/18.
//  Copyright © 2018 Apple. All rights reserved.
//

#import "MainTableViewCell.h"



@implementation MainTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setCollectionViewDataSourceDelegate:(id<UICollectionViewDataSource, UICollectionViewDelegate>)dataSourceDelegate indexPath:(NSIndexPath *)indexPath
{
    self.clCollectionView.dataSource = dataSourceDelegate;
    self.clCollectionView.delegate = dataSourceDelegate;
 //   self.clCollectionView.indexPath = indexPath;
    [self.clCollectionView setContentOffset:self.clCollectionView.contentOffset animated:NO];
    
    [self.clCollectionView reloadData];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
