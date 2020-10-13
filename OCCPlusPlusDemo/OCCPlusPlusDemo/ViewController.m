//
//  ViewController.m
//  OCCPlusPlusDemo
//
//  Created by Pengxuyuan on 2020/10/13.
//

#import "ViewController.h"
#import "OCObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [[OCObject new] exampleMethodWithString:@"AAA"];
}


@end
