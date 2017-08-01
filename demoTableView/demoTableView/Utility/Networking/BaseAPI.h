//
//  BaseAPI.h
//  Gotadi-ObjectC
//
//  Created by Ln on 6/6/17.
//  Copyright © 2017 Ln. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

typedef void (^ResponseSuccessBlock)(id data, id header);
typedef void (^ResponseFailBlock)(id task, NSError * error);

@interface BaseAPI : AFHTTPSessionManager

+ (BaseAPI *)sharedManager;

+ (void) getOnPath:(NSString*) path
   successCallback:(ResponseSuccessBlock)successCallback
     errorCallBack:(ResponseFailBlock)errorCallback;

@end
