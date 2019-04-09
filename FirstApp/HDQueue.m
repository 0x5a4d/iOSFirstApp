//
//  HDQueue.m
//  FirstApp
//
//  Created by Denis Khazhiev on 08/04/2019.
//  Copyright © 2019 Denis Khazhiev. All rights reserved.
//

#import "HDQueue.h"
@interface HDQueue()
@property (strong) NSMutableArray *data;
@end

@implementation HDQueue
-(instancetype) init {
    if (self = [super init]) {
        _data = [[NSMutableArray alloc] init];
        _count = 0;
    }
    return self;
}

-(void) enqueue: (id) anObject {
    [self.data addObject:anObject];
    _count++;
}

-(id) dequeue {
    id headObject = [self.data objectAtIndex:0];
    if (headObject != nil) {
        [self.data removeObjectAtIndex:0];
        _count--;
    }
    return headObject;
}

@end
