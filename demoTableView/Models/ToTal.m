//
//  ToTal.m
//  demoTableView
//
//  Created by Tien Ngo on 8/2/17.
//  Copyright © 2017 HTK-INC. All rights reserved.
//

#import "ToTal.h"

@implementation ToTal

+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    return YES;
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"total": @"total",
                                                                  @"data": @"data"
                                                                  }];
}

- (void)setDataWithNSArray:(NSArray *)array {
    if (array) {
        NSMutableArray *listData = [[NSMutableArray alloc] init];
        for (NSDictionary *dict in array) {
            NSError *error;
            Demo *data = [[Demo alloc] initWithDictionary:dict error:&error];
            [listData addObject:data];
        }
        self.data = listData;
    } else {
        self.data = nil;
    }
}

@end
