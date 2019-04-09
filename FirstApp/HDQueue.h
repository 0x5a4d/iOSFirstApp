//
//  HDQueue.h
//  FirstApp
//
//  Created by Denis Khazhiev on 08/04/2019.
//  Copyright © 2019 Denis Khazhiev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDQueue : NSObject
@property (assign, readonly) long count;

-(void)enqueue:(id)anObject;
-(id)dequeue;

@end
