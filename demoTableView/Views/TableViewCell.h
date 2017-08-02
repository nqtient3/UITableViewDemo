//
//  TableViewCell.h
//  demoTableView
//
//  Created by Tien Ngo on 8/2/17.
//  Copyright © 2017 HTK-INC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *demoImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
