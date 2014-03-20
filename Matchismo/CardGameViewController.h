//
//  CardGameViewController.h
//  Matchismo
//
//  Created by Alexander Pirsig on 18.03.14.
//  Copyright (c) 2014 CS193p. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model/PlayingCardDeck.h"
#import "Model/Card.h"

@interface CardGameViewController : UIViewController

@property (strong, nonatomic) PlayingCardDeck* deck;

@end
