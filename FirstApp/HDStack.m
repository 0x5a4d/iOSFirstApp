//
//  HDStack.m
//  FirstApp
//
//  Created by Denis Khazhiev on 08/04/2019.
//  Copyright © 2019 Denis Khazhiev. All rights reserved.
//

#import "HDStack.h"

@interface HDStack()
@property (strong) NSMutableArray *data;
@end

@implementation HDStack

-(id) init {
    if (self = [super init]) {
        _data = [[NSMutableArray alloc] init];
        _count = 0;
    }
    return self;
}

-(void) push: (id) anObject {
    [self.data addObject:anObject];
    _count++;
}

-(id) pop {
    id obj = [self lastObject];
    if(obj != nil) {
        [self.data removeLastObject];
        _count = self.data.count;
    }
    return obj;
}

-(void) clear {
    [self.data removeAllObjects];
    _count = 0;
}

-(id) lastObject {
    return [self.data lastObject];
}

@end
