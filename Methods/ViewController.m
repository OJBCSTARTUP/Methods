//
//  ViewController.m
//  Methods
//
//  Created by macOSX on 3/9/17.
//  Copyright © 2017 macOSX. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()
@property (nonatomic)double *bankAcount;
@property (nonatomic)double *itemAmount;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bankAcount = 500;
    self.itemAmount = 300;
    Person *person1 = [[Person alloc]init];
    [person1 speakName];
    //call static function
    [Person statSpecies];
    //ImageURL
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://www.google.com"]]];
    
}
-(BOOL) canPurchase:(double) amount
{
    if(_bankAcount >= _itemAmount){
         NSLog(@"You can buy it.: %d",self.itemAmount);
       return YES;
    }
    return NO;
}
-(void) processPurchase:(double)amountItems
{
    if([self canPurchase:*(self.itemAmount)]){
        NSLog(@"We can buy.",self.bankAcount);
    }
}
-(void) declareWinner:(NSNumber*)scoreA playerBScore:(NSNumber*)scoreB
{
    if(scoreA > scoreB)
    {
        NSLog(@"Winner is A...");
    }else if (scoreB > scoreA){
        NSLog(@"Winner is B...");
    }else
    {
        NSLog(@"Their is the same yeyeye...");
    }
}


@end
