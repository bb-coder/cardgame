//
//  Deck.h
//  cardGame
//
//  Created by bb_coder on 14-5-30.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Card;
@interface Deck : NSObject
@property (nonatomic, strong) NSMutableArray * cards;
- (void) addCard:(Card *) card atTop:(BOOL) isTop;
- (void) addCard:(Card *) card;
- (Card *) drawCardWithRandom;
@end
