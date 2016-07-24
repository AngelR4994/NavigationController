//
//  ViewController.m
//  Navigation Controller
//
//  Created by xax on 7/23/16.
//  Copyright © 2016 xax. All rights reserved.
//

#import "Home.h"


@interface Home ()
@property NSMutableArray *FoodTitles;
@property NSMutableArray *FoodDescriptions;
@property NSMutableArray *FoodPhotos;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;

@end

@implementation Home
/************************************************************************/
#pragma mark - Initializatino methods
/************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)initController {
    self.FoodTitles   = [[NSMutableArray alloc] initWithObjects: @"Desayuno", @"Colación", @"Comida", @"Colación",@"Cena", nil];
    self.FoodPhotos   = [[NSMutableArray alloc] initWithObjects: @"desayuno.jpg", @"colacion.jpg", @"comida.jpg", @"colacion2.jpg",@"cena.jpg", nil];
    self.FoodDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Empieza bien el día con un excelente desayuno", @"¿Tines hambre? elige un aperitivo para calmar el hambre", @"Hora de comer, ¿qué apetece?" , @"¿Tines hambre? elige un aperitivo para calmar el hambre", @"Última comida del día!!", nil];
}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.FoodTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 190;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays
    cell.lblFood.text = self.FoodTitles[indexPath.row];
    cell.lblDescription.text= self.FoodDescriptions[indexPath.row];
    cell.imgFood.image =[UIImage imageNamed:self.FoodPhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.stTitleSelected        =   self.FoodTitles[indexPath.row];
    self.stDescriptionSelected  =   self.FoodDescriptions[indexPath.row];
    self.stPhotoSelected        =   self.FoodPhotos[indexPath.row];
    [self performSegueWithIdentifier:@"FoodDetails" sender:self];
    
}
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.destinationViewController isKindOfClass:[FoodDetails class]])
    {
        FoodDetails *Food =[segue destinationViewController];
        Food.FoodTitle          = self.stTitleSelected;
        Food.FoodDescription    = self.stDescriptionSelected;
        Food.FoodPhoto          = self.stPhotoSelected;
    }
}

@end
