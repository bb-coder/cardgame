//
//  Card.h
//  cardGame
//
//  Created by bb_coder on 14-5-30.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString * content;
@property (nonatomic, assign) BOOL isChose;
@property (nonatomic, assign) BOOL isMatch;

- (NSInteger) matchWithNSArray:(NSArray *) otherCards;
@end
