//
//  Card.m
//  cardGame
//
//  Created by bb_coder on 14-5-30.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import "Card.h"

@implementation Card

- (NSInteger) matchWithNSArray:(NSArray *)otherCards
{
    NSInteger sum = 0;
    for(Card * card in otherCards)
    {
        if ([[card content] isEqualToString:_content]) {
            sum++;
        }
    }
    return sum;
}
@end
