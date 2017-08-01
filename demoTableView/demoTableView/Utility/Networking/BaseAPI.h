//
//  BaseAPI.h
//  Gotadi-ObjectC
//
//  Created by Ln on 6/6/17.
//  Copyright © 2017 Ln. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

typedef void (^ResponseSuccessBlock)(NSURLSessionTask *task, id responseObject);
typedef void (^ResponseFailBlock)(NSURLSessionTask *operation, NSError *error);

@interface BaseAPI : AFHTTPSessionManager

+ (BaseAPI *)sharedManager;

+ (void) getOnPath:(NSString*) path
   successCallback:(ResponseSuccessBlock)successCallback
     errorCallBack:(ResponseFailBlock)errorCallback;

@end
