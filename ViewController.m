//
//  ViewController.m
//  DemoCube
//
//  Created by Apple on 3/5/18.
//  Copyright © 2018 Apple. All rights reserved.
//

#import "ViewController.h"
#import "MainTableViewCell.h"
#import "InsideCollectionViewCell.h"
#import "SecondMainTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    

    if(indexPath.row==0)
    { MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainTableViewCell"];
  //   [cell setCollectionViewDataSourceDelegate:self indexPath:indexPath];
    return cell;
    }
    else
    {SecondMainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SecondMainTableViewCell"];
        return cell;
    }
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(MainTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [cell setCollectionViewDataSourceDelegate:self indexPath:indexPath];
    
   
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 10;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    InsideCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"InsideCollectionViewCell" forIndexPath:indexPath];
    cell.textLabel.text=[NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
    
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"%ld",indexPath.row);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
