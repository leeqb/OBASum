//
//  OBANetwork.m
//  OBASum
//
//  Created by leeqb on 03/03/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#import "OBANetwork.h"
#import <AFNetworking.h>

@implementation OBANetwork

+ (void)post:(NSString *)url params:(NSDictionary *)params finishedBlock:(RequestFinishedBlock)finishedBlcok
{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSError *error = nil;
    NSURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:url parameters:params error:&error];
    
    if (error != nil) {
        finishedBlcok(nil, error);
        return;
    }
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        finishedBlcok(responseObject, error);
    }];
    [dataTask resume];
}

@end
