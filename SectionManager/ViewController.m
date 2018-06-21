//
//  ViewController.m
//  SectionManager
//
//  Created by CodeHry on 2018/6/20.
//  Copyright © 2018年 CodeHry. All rights reserved.
//

#import "ViewController.h"
#import "SectionManageService.h"
#import "RYTableViewRootSection.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView * myTableView;
@property(nonatomic,strong)NSMutableArray<RYTableViewRootSection*>*sectionManageArr;
@end

@implementation ViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        _sectionManageArr =[[NSMutableArray alloc]init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myTableView =[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    _myTableView.delegate=self;
    _myTableView.dataSource=self;
    [self.view addSubview:_myTableView];
    
    _sectionManageArr =[SectionManageService getSectionManagesWithTableView:self.myTableView];
    
    [_myTableView reloadData];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark--tableviewdelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return _sectionManageArr.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self.sectionManageArr[section]tableView:tableView numberOfRowsInSection:section];
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return [self.sectionManageArr[indexPath.section]tableView:tableView cellForRowAtIndexPath:indexPath];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return [self.sectionManageArr[indexPath.section]tableView:tableView heightForRowAtIndexPath:indexPath];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.sectionManageArr[indexPath.section]tableView:tableView didSelectRowAtIndexPath:indexPath];
}
@end
