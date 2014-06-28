
//
//  PlayingCard.m
//  cardGame
//
//  Created by bb_coder on 14-5-30.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSArray *) validsuits
{
    return @[@"♠️",@"♦️",@"♣️",@"♥️"];
}

- (NSArray *) validranks
{
    return @[@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8"
             ,@"9",@"10",@"J",@"Q",@"K"];
}
@end
