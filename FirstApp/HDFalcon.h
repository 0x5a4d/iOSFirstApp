//
//  HDFalcon.h
//  FirstApp
//
//  Created by Denis Khazhiev on 20/04/2019.
//  Copyright © 2019 Denis Khazhiev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HDPredator.h"
#import "HDBird.h"
#import <UIKit/UIKit.h>

@interface HDFalcon : NSObject <HDPredator, HDBird>
@end
