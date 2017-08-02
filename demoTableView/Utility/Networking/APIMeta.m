//
//  APIMeta.h
//  Gotadi-ObjectC
//
//  Created by Ln on 6/6/17.
//  Copyright © 2017 Ln. All rights reserved.
//
#import "APIMeta.h"

@implementation APIMeta

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (id)meta200 {
    APIMeta *meta                       = [[APIMeta alloc] init];
    meta.status                         = @200;
    return meta;
}

+ (id)meta400 {
    APIMeta *meta                       = [[APIMeta alloc] init];
    meta.status                         = @400;
    return meta;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"API meta status:%@ - error code:%@ - errorMsg:%@", self.status, self.errorCode, self.errorMessage];
}

@end
