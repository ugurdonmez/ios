//
//  ViewController.h
//  MapItem
//
//  Created by Ugur Donmez on 19/06/15.
//  Copyright (c) 2015 Ugur Donmez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import <AddressBook/AddressBook.h>

@interface ViewController : UIViewController

@property CLLocationCoordinate2D coords;

@property (weak, nonatomic) IBOutlet UITextField *address;
@property (weak, nonatomic) IBOutlet UITextField *city;
@property (weak, nonatomic) IBOutlet UITextField *state;
@property (weak, nonatomic) IBOutlet UITextField *zip;
- (IBAction)getDirection:(id)sender;


@end

