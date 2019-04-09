#import "SecondViewController.h"
#import "HDQueue.h"

@interface SecondViewController ()
@property (strong) HDQueue *nameQueue;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _nameQueue = [[HDQueue alloc] init];
    // Do any additional setup after loading the view.
}

- (IBAction)enqueue:(UIButton* ) sender {
    sender.enabled = false;
    [_nameQueue enqueue: sender];
    NSLog(@"в очередь помещен объект  =  %@", [sender currentTitle]);
    NSLog(@"размер очереди = %ld", _nameQueue.count);
    _dequeueBtn.enabled = true;
    
}
- (IBAction)dequeue:(UIButton* ) sender {
    UIButton *deqName = [_nameQueue dequeue];
    deqName.enabled = true;
    NSLog(@"вынут объект  =  %@", [deqName currentTitle]);
    NSLog(@"размер очереди = %ld", _nameQueue.count);
    if(_nameQueue.count > 0){
        sender.enabled = true;
    } else {
        sender.enabled = false;
    }
}


@end
