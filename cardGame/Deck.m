//
//  Deck.m
//  cardGame
//
//  Created by bb_coder on 14-5-30.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import "Deck.h"
#import "Card.h"
@implementation Deck

- (NSMutableArray *) cards //牌堆的懒加载
{
    if(!_cards)
    {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}
//是否在顶部插入扑克牌
- (void) addCard:(Card *)card atTop:(BOOL)isTop
{
    if (isTop) {
        [_cards insertObject:card atIndex:0];
    }else{
    [_cards addObject:card];
    }
}
//在尾部插入扑克牌
- (void) addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}
//随机抽出一张牌
- (Card *) drawCardWithRandom
{
    int lenth = [[self cards] count];
    
    if (lenth <= 0) {
        return nil;
    }
    
    unsigned seed = arc4random() % lenth;
    
    Card * randomCard = nil;
    
    randomCard = [[self cards] objectAtIndex:seed];
    
    [[self cards] removeObjectAtIndex:seed];
    
    return  randomCard;
}
@end
