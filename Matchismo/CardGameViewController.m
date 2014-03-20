//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Alexander Pirsig on 18.03.14.
//  Copyright (c) 2014 CS193p. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController


-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flipCount changed to %d",self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    
    if (!self.deck) {
        self.deck = [[PlayingCardDeck alloc] init];
    }
    
    if([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                      forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        
        Card *card = [self.deck drawRandomCard];
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        
        [sender setTitle:[card contents] forState:UIControlStateNormal];
    }
    
    self.flipCount++;
}

@end
