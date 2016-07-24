//
//  FoodDetails.h
//  Navigation Controller
//
//  Created by xax on 7/24/16.
//  Copyright © 2016 xax. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodDetails : UIViewController

@property  NSString *FoodTitle;
@property  NSString *FoodDescription;
@property  NSString *FoodPhoto;


@property (strong, nonatomic) IBOutlet UIImageView *imgFood;
@property (strong, nonatomic) IBOutlet UILabel *lblFood;
@property (strong, nonatomic) IBOutlet UILabel *lblDescription;

@end
