//
//  PlayingDeck.m
//  cardGame
//
//  Created by bb_coder on 14-5-30.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import "PlayingDeck.h"
#import "Card.h"
#import "PlayingCard.h"

@implementation PlayingDeck
- (instancetype) init
{
    self = [super init];
    if(self)
    {
    for (NSString *suit in [PlayingCard validsuits]) {
        
        for(NSString *rank in [PlayingCard validranks])
        {
            Card * card = [[Card alloc] init];
            
            [card.content stringByAppendingString:suit];
            [card.content stringByAppendingString:rank];
            [[self cards] addObject:card];
        }
    }
    }
    return self;
}
@end
