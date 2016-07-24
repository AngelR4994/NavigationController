//
//  FoodDetails.m
//  Navigation Controller
//
//  Created by xax on 7/24/16.
//  Copyright © 2016 xax. All rights reserved.
//

#import "FoodDetails.h"

@interface FoodDetails ()

@end

@implementation FoodDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblFood.text    =self.FoodTitle;
    self.lblDescription.text    = self.FoodDescription;
    self.imgFood.image          = [UIImage imageNamed:self.FoodPhoto];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
