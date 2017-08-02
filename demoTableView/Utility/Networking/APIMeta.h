//
//  APIMeta.h
//  Gotadi-ObjectC
//
//  Created by Ln on 6/6/17.
//  Copyright © 2017 Ln. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const JSONResponseSerializerWithErrorBodyKey = @"body";
static NSString * const JSONResponseSerializerWithErrorCodeKey = @"statusCode";
static NSString * const JSONResponseSerializerWithErrorJSONKey = @"json";

@interface APIMeta : NSObject

@property (nonatomic, strong) NSNumber *status;
@property (nonatomic, strong) NSDate *time;
@property (nonatomic, assign) NSString *errorCode;
@property (nonatomic, strong) NSString *errorMessageDev;
@property (nonatomic, strong) NSString *errorMessage;
@property (nonatomic, strong) NSString *errorLine;
@property (nonatomic, strong) NSArray *errorTrace;
@property (nonatomic, strong) NSString *errorDebug;

+ (id)meta200;
+ (id)meta400;

@end
