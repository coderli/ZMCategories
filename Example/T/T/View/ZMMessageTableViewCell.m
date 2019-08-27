//
//  ZMMessageTableViewCell.m
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import "ZMMessageTableViewCell.h"

@implementation ZMMessageTableViewCell
@synthesize model = _model;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

    self.msgBtn.layer.cornerRadius = 5;
}

- (void)setModel:(ZMRegisterItemModel *)model
{
    _model = model;

    self.leftLabel.attributedText = [self scaleToFillString:model.leftTitle];
    self.middleContentTextFiled.text = model.middleContent;
    self.middleContentTextFiled.placeholder = model.middlePlaceHolder;
    self.middleContentTextFiled.userInteractionEnabled = model.middleCanEidt;
    self.middleContentTextFiled.keyboardType = model.keyboardType;
}

- (IBAction)sendMsgAction:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    btn.userInteractionEnabled = NO;
    btn.backgroundColor = UIColor.lightGrayColor;
    [self countDown];
}

- (void)countDown
{

    __block int time = 10;

    __weak ZMMessageTableViewCell *ws = self;
    self.timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0));
    dispatch_source_set_timer(self.timer, DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC, 1 * NSEC_PER_SEC);
    dispatch_source_set_event_handler(self.timer, ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"111");
            if (time > 0) {
                time --;
                [ws.msgBtn setTitle:[NSString stringWithFormat:@"重新发送(%d)",time] forState:UIControlStateNormal];
            }
            else
            {
                ws.msgBtn.userInteractionEnabled = YES;
                ws.msgBtn.backgroundColor = [UIColor colorWithRed:55/255.0 green:166/255.0 blue:36/255.0 alpha:1];
                [ws.msgBtn setTitle:@"重新发送" forState:UIControlStateNormal];
                dispatch_cancel(ws.timer);
            }
        });
    });
    dispatch_resume(self.timer);
}
@end
