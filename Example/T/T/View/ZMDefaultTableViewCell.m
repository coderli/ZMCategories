//
//  ZMDefaultTableViewCell.m
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import "ZMDefaultTableViewCell.h"

@implementation ZMDefaultTableViewCell
@synthesize model = _model;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

    self.middleContentTextFiled.delegate = self;

    [self.middleContentTextFiled addTarget:self action:@selector(textFieldTextChanged:) forControlEvents:UIControlEventEditingChanged];
}

- (void)textFieldTextChanged:(UITextField *)textField
{
    if (textField.markedTextRange == nil)
    {
        NSLog(@"------->%@",textField.text);
    }
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

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    return YES;
}

@end
