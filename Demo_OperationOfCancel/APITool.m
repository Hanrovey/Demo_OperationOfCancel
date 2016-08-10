//
//  APITool.m
//  Demo_OperationOfCancel
//
//  Created by Ihefe_Hanrovey on 16/8/10.
//  Copyright © 2016年 Ihefe_Hanrovey. All rights reserved.
//

#import "APITool.h"

@implementation APITool
+ (AFHTTPRequestOperation *)getSubTableListData:(NSString *)category callBack:(IHFMResponseBack)risCallBack
{
    // url 这个根据自己的具体url来写,下面这个是我模拟测试用的。。。。
    NSString *urlStr = @"http://192.168.10.111:8080/image/getSeriesList";
    
    
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    param[@"category"] = category;
    
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html",nil];
    
    // 获取当前请求操作,这句是重点哈。。。。。。。
    AFHTTPRequestOperation *operation = [manager POST:urlStr parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        // 成功回调
        if (risCallBack)
        {
            risCallBack(@1,responseObject);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        // 失败回调
        if (risCallBack)
        {
            risCallBack(@0,error);
        }
    }];
    return operation;
}
@end
