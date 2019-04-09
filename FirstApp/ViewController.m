//
//  ViewController.m
//  FirstApp
//
//  Created by Denis Khazhiev on 08/04/2019.
//  Copyright © 2019 Denis Khazhiev. All rights reserved.
//

#import "ViewController.h"
#import "HDStack.h"
#import "HDQueue.h"

@interface ViewController ()
@property (strong) HDStack *nameStack;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _nameStack = [[HDStack alloc] init];
    // Do any additional setup after loading the view.
}

- (IBAction)push:(UIButton* ) sender {
    sender.enabled = false;
    [_nameStack push: sender];
    NSLog(@"в стэк помещен объект  =  %@", [sender currentTitle]);
    NSLog(@"размер стэка = %ld", _nameStack.count);
    _popBtn.enabled = true;
    
}
- (IBAction)pop:(UIButton* ) sender {
    UIButton *poppedName = [_nameStack pop];
    poppedName.enabled = true;
    NSLog(@"вынут объект  =  %@", [poppedName currentTitle]);
    NSLog(@"размер стэка = %ld", _nameStack.count);
    if(_nameStack.count > 0){
        sender.enabled = true;
    } else {
        sender.enabled = false;
    }
}


@end
