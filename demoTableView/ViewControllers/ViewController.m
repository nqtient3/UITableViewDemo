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
#import "Demo.h"
#import "TableViewCell.h"
#import "ToTal.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) ToTal *total;
@property (weak, nonatomic) IBOutlet UITableView *demoTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self callAPI];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)callAPI {
    [BaseAPI getOnPath:kUrl successCallback:^(NSURLSessionTask *task, id responseObject) {
        NSError *error;
        self.total = [[ToTal alloc] initWithDictionary:responseObject error:&error];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.demoTableView reloadData];
        });
        
    } errorCallBack:^(NSURLSessionTask *operation, NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.total.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifierCell = @"DemoTableViewCell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierCell forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryNone;
    Demo *demo = (Demo *) [self.total.data objectAtIndex:indexPath.row];
    cell.titleLabel.text = demo.booktitle;
    NSString *target = [NSString stringWithFormat:@"http://0.0.0.0:8080/image/%@",demo.image];
//    NSString *html = [NSString stringWithContentsOfURL: [NSURL URLWithString:target] encoding:NSUTF8StringEncoding error: nil];
    [cell.demoImageView sd_setImageWithURL:[NSURL URLWithString:target] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        
    }];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath; {
    return 56.0f;
}

@end
