//
//  HDPredator.h
//  FirstApp
//
//  Created by Denis Khazhiev on 20/04/2019.
//  Copyright © 2019 Denis Khazhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HDAnimal.h"

@protocol HDPredator <HDAnimal>
@required
-(void) hunt;
@end
