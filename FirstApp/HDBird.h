//
//  HDBird.h
//  FirstApp
//
//  Created by Denis Khazhiev on 20/04/2019.
//  Copyright © 2019 Denis Khazhiev. All rights reserved.
//
#import "HDAnimal.h"

@protocol HDBird <HDAnimal>
@required
-(void) fly;
-(void) voice;
@end
