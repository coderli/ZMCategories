//
//  ZMBaseTableViewCell.h
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMRegisterItemModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZMBaseTableViewCell : UITableViewCell

@property (nonatomic,strong) ZMRegisterItemModel *model;
- (NSAttributedString *)scaleToFillString:(NSString *)str;
@end

NS_ASSUME_NONNULL_END
