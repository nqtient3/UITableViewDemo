//
//  BaseAPI.h
//  Gotadi-ObjectC
//
//  Created by Ln on 6/6/17.
//  Copyright © 2017 Ln. All rights reserved.
//

#import "BaseAPI.h"

@implementation BaseAPI

static BaseAPI *sharedInstanceBaseApi = nil;

+ (BaseAPI*) sharedManager {
    static BaseAPI *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(!sharedManager) {
            sharedManager = [[BaseAPI alloc] init];
        }
    });
    return  sharedManager;
}

#pragma mark - GET methods

+ (void) getOnPath:(NSString*) path
   successCallback:(ResponseSuccessBlock)successCallback
     errorCallBack:(ResponseFailBlock)errorCallback {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:path parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        successCallback(task, responseObject);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        errorCallback(operation, error);
    }];
}

@end
