//
//  ZMDefaultTableViewCell.h
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import "ZMBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZMDefaultTableViewCell : ZMBaseTableViewCell<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UITextField *middleContentTextFiled;

@end

NS_ASSUME_NONNULL_END
