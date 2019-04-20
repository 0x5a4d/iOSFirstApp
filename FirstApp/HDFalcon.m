//
//  HDFalcon.m
//  FirstApp
//
//  Created by Denis Khazhiev on 20/04/2019.
//  Copyright © 2019 Denis Khazhiev. All rights reserved.
//

#import "HDFalcon.h"

@implementation HDFalcon

- (void)hunt {
    NSLog(@"Охочусь");
}

- (void)fly {
    NSLog(@"Лечу");
}

- (void)voice {
    NSLog(@"Кря");
}

- (NSString *)getName {
    return @"Сокол";
}

@end
