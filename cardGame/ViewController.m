//
//  ViewController.m
//  cardGame
//
//  Created by bb_coder on 14-5-30.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import "ViewController.h"
#import "Card.h"
#import "Deck.h"
#import "PlayingCard.h"
#import "PlayingDeck.h"
@interface ViewController ()
@property (nonatomic, strong) PlayingDeck * deck;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)touchCardButton:(id)sender {
    if ([sender currentTitle].length <= 0) {
        UIImage *image = [UIImage imageNamed:@"圆角矩形"];
        
        Card * card = [_deck drawCardWithRandom];
        [sender setBackground:image];
        [sender setTitle:card.content];
        
        
    }
    else
    {
        UIImage *image = [UIImage imageNamed:@"扑克背景"];
        [sender setBackground:image];
        
        [sender setTitle:@""];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
