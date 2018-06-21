//
//  RYTableViewRootSection.h
//  SectionManager
//
//  Created by CodeHry on 2018/6/20.
//  Copyright © 2018年 CodeHry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface RYTableViewRootSection : NSObject

@property (nonatomic,weak)UITableView *myTableView;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;

//返回cell数量
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

//返回cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

//返回header
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;

//返回header-height
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;

// 返回footer
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section;

// 返回footer-height
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section;

//点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;


//加载数据刷新
- (void)reloadSection;

// 加载数据
- (void)requestDataInfo;

@end
