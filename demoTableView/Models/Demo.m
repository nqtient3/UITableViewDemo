//
//  Demo.m
//  demoTableView
//
//  Created by Tien Ngo on 8/2/17.
//  Copyright © 2017 HTK-INC. All rights reserved.
//

#import "Demo.h"

@implementation Demo

+ (BOOL)propertyIsOptional:(NSString *)propertyName {
        return YES;
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"booktitle": @"booktitle",
                                                                  @"image": @"image"
                                                                  }];
}

@end
