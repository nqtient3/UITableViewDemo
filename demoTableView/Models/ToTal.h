//
//  ToTal.h
//  demoTableView
//
//  Created by Tien Ngo on 8/2/17.
//  Copyright © 2017 HTK-INC. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "Demo.h"

@interface ToTal : JSONModel

@property (nonatomic) NSInteger total;
@property (nonatomic) NSArray <ToTal *> *data;

@end
