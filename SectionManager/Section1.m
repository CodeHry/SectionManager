//
//  Section1.m
//  SectionManager
//
//  Created by CodeHry on 2018/6/20.
//  Copyright © 2018年 CodeHry. All rights reserved.
//

#import "Section1.h"

@implementation Section1

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"section1"];
    
    cell.textLabel.text =@"section1";
    cell.backgroundColor =[UIColor orangeColor];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 44;
}
-(void)requestDataInfo{
    
    [self.myTableView reloadData];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UIAlertView * alert=[[UIAlertView alloc]initWithTitle:@"" message:@"section1" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
    
    [alert show];
    
    
}
@end
