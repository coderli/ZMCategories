//
//  ZMMessageTableViewCell.h
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import "ZMBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZMMessageTableViewCell : ZMBaseTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UITextField *middleContentTextFiled;
@property (weak, nonatomic) IBOutlet UIButton *msgBtn;
@property (nonatomic,strong)dispatch_source_t timer;
- (IBAction)sendMsgAction:(id)sender;

@end

NS_ASSUME_NONNULL_END
