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
#import "DemoTableViewCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *demoTableView;
@property (strong, nonatomic) NSMutableArray *titleArray;
@property (strong, nonatomic) NSMutableArray *imageArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _titleArray = [[NSMutableArray alloc] init];
    _imageArray = [[NSMutableArray alloc] init];
    [self callAPI];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)callAPI {
    [_titleArray removeAllObjects];
    [_imageArray removeAllObjects];
    __weak typeof (self) weakSelf = self;
    [BaseAPI getOnPath:kUrl successCallback:^(NSURLSessionTask *task, id responseObject) {
        NSMutableArray *dataArray = [(NSDictionary *)responseObject objectForKey:@"data"];
        for (NSDictionary *dataDict in dataArray) {
            NSString *titleString = [dataDict objectForKey:@"booktitle"];
            [_titleArray addObject:titleString];
            NSString *imageString = [dataDict objectForKey:@"image"];
            [_imageArray addObject:imageString];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [weakSelf.demoTableView reloadData];
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
    return _titleArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"DemoTableViewCell";
    DemoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.contentLabel.text = [_titleArray objectAtIndex:indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 56.0f;
}

@end
