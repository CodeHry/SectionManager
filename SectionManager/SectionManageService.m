//
//  SectionManageService.m
//  SectionManager
//
//  Created by CodeHry on 2018/6/20.
//  Copyright © 2018年 CodeHry. All rights reserved.
//

#import "SectionManageService.h"
#import "RYTableViewRootSection.h"
#import "Section1.h"
#import "Section2.h"
#import "Section3.h"
@implementation SectionManageService
+(NSMutableArray *)getSectionManagesWithTableView:(id)table{
    
    NSArray * arr =@[@"Section1",@"Section2",@"Section3"];
    NSMutableArray * array =[[NSMutableArray alloc]init];
    
    for (NSString * str in arr) {

        RYTableViewRootSection * section =[[NSClassFromString(str)alloc]init];

        [array addObject:section];

    }
    
    return array;
}
@end
