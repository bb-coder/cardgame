//
//  PlayingCard.h
//  cardGame
//
//  Created by bb_coder on 14-5-30.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface PlayingCard :Card

@property (nonatomic, strong) NSString * suit;

@property (nonatomic, assign) short rank;

+ (NSArray *) validsuits;
+ (NSArray *) validranks;

@end
