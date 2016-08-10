//
//  ViewController.m
//  Demo_OperationOfCancel
//
//  Created by Ihefe_Hanrovey on 16/8/10.
//  Copyright © 2016年 Ihefe_Hanrovey. All rights reserved.
//

#import "ViewController.h"
#import "APITool.h"
@interface ViewController ()
{
    UITableView *mainTable;
    UITableView *subTable;
    
    AFHTTPRequestOperation *subTableOperation;//请求操作
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    mainTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 100, 100) style:UITableViewStylePlain];
    [self.view addSubview:mainTable];
    
    
    subTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 100, 100) style:UITableViewStylePlain];
    [self.view addSubview:subTable];
    
    
    [self loadSubTableData];
    
}

#pragma mark - 加载subTable数据
- (void)loadSubTableData
{
    
    if (subTableOperation)// 如果已经有请求了,就直接取消掉。
    {
        [subTableOperation cancel];
    }
    
    // 请求不存在,重新实例化一个
    subTableOperation = [APITool getSubTableListData:@"test" callBack:^(NSNumber *success, id response) {
        
        // 处理网络回调数据 和 reloadData
    }];
    
    [subTableOperation start];
}
@end
