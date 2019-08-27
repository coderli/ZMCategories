//
//  UIView+Xib.m
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import "UIView+ZMXib.h"

@implementation UIView (ZMXib)
+ (instancetype)loadXibView
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
}
+ (instancetype)loadXibViewWithLastObject
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].lastObject;
}
+ (instancetype)loadXibViewWithObjectIndex:(NSUInteger)index
{
    NSArray *objectArray = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];

    if (index >= objectArray.count)
    {
        return objectArray.lastObject;
    }
    else
    {
        return objectArray[index];
    }
}
@end
