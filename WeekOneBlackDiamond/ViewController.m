//
//  ViewController.m
//  WeekOneBlackDiamond
//
//  Created by Jordan Nelson on 2/6/15.
//  Copyright (c) 2015 Jordan Nelson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

// #1
@property (strong, nonatomic) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"BLACK DIAMOND: Week 1";
    
    // #2 - INITIALIZE TABLEVIEW PROPERTY
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    
    // #3 - SET DATASOURCE OF TABLEVIEW
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    // #4 - REGISTER CELL TYPES WITH TABLEVIEW
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    // #5 - ADD TABLEVIEW TO VIEWCONTROLLER(CLASS)'S VIEW AS SUBVIEW
    [self.view addSubview:self.tableView];
    
}

#pragma mark - UITableViewDataSource Protocol
// #6 - IMPLEMENT UITABLEVIEWDATASOURCE PROTOCOL (IN DATASOURCE METHOD)
// REQUIRED METHODS
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
