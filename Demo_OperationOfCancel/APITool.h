//
//  APITool.h
//  Demo_OperationOfCancel
//
//  Created by Ihefe_Hanrovey on 16/8/10.
//  Copyright © 2016年 Ihefe_Hanrovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking/AFNetworking.h"

//>!  网络回调
typedef void(^IHFMResponseBack)(NSNumber *success,id response);

@interface APITool : NSObject

/**
 *  获取子tableView的数据
 *
 *  @param category    类型参数
 *  @param risCallBack 回调
 *
 *  @return AFHTTPRequestOperation操作
 */
+ (AFHTTPRequestOperation *)getSubTableListData:(NSString *)category callBack:(IHFMResponseBack)risCallBack;
@end
