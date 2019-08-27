//
//  ZMBaseTableViewCell.m
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import "ZMBaseTableViewCell.h"

@implementation ZMBaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (NSAttributedString *)scaleToFillString:(NSString *)str
{
    NSMutableAttributedString *mutableAttrStr = [[NSMutableAttributedString alloc] initWithString:str];

    float w = [self getStringWidth:str];
    if ([str rangeOfString:@"*"].length > 0)
    {
        float specialW = [self getStringWidth:@"*"];
        float spacing = (90 - w - specialW)/(str.length - 2);
        [mutableAttrStr addAttribute:NSKernAttributeName value:@(spacing) range:NSMakeRange(0, str.length - 2)];
        [mutableAttrStr addAttribute:NSForegroundColorAttributeName value:UIColor.redColor range:[str rangeOfString:@"*"]];
        [mutableAttrStr addAttribute:NSBaselineOffsetAttributeName value:@(-2) range:[str rangeOfString:@"*"]];
    }
    else
    {
        float spacing = (90 - w)/(str.length - 1);
        [mutableAttrStr addAttribute:NSKernAttributeName value:@(spacing) range:NSMakeRange(0, str.length - 1)];
    }
    return mutableAttrStr;
}


- (float)getStringWidth:(NSString *)str
{
    CGRect rect = [str boundingRectWithSize:CGSizeMake(90, 50) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
    return rect.size.width;
}

@end
