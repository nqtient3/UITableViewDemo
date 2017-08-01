//
//  ViewController.m
//  demoTableView
//
//  Created by Tien Ngo on 8/1/17.
//  Copyright © 2017 HTK-INC. All rights reserved.
//

#import "ViewController.h"
#import "BaseAPI.h"
#import "HTTPConstants.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self callAPI];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)callAPI {
    [BaseAPI getOnPath:kUrl successCallback:^(NSURLSessionTask *task, id responseObject) {
        
        
    } errorCallBack:^(NSURLSessionTask *operation, NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
