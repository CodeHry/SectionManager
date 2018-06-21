//
//  Section3.m
//  SectionManager
//
//  Created by CodeHry on 2018/6/20.
//  Copyright © 2018年 CodeHry. All rights reserved.
//

#import "Section3.h"

@implementation Section3

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"section3"];
    
    cell.textLabel.text =@"section3";
    cell.backgroundColor=[UIColor blueColor];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 44*3;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UIAlertView * alert=[[UIAlertView alloc]initWithTitle:@"" message:@"section3" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
    
    [alert show];
    
    
}
@end
