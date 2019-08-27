//
//  ZMIndicatorTableViewCell.m
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import "ZMIndicatorTableViewCell.h"

@implementation ZMIndicatorTableViewCell
@synthesize model = _model;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setModel:(ZMRegisterItemModel *)model
{
    _model = model;
}
@end
