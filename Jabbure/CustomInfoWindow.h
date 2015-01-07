//
//  CustomInfoWindow.h
//  Jabbure
//
//  Created by Prasad Ankem on 1/6/15.
//  Copyright (c) 2015 Prasad Ankem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomInfoWindow : UIView

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *neighborhood;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UIImageView *navigateIcon;

@property (weak, nonatomic) IBOutlet UISlider *slider1;
@property (weak, nonatomic) IBOutlet UIImageView *slider1LowIcon;
@property (weak, nonatomic) IBOutlet UIImageView *slider1HighIcon;

@property (weak, nonatomic) IBOutlet UISlider *slider2;
@property (weak, nonatomic) IBOutlet UIImageView *slider2LowIcon;
@property (weak, nonatomic) IBOutlet UIImageView *slider2HighIcon;

@property (weak, nonatomic) IBOutlet UISlider *slider3;
@property (weak, nonatomic) IBOutlet UIImageView *slider3LowIcon;
@property (weak, nonatomic) IBOutlet UIImageView *slider3HighIcon;

@property (weak, nonatomic) IBOutlet UIButton *checkIn;
@property (weak, nonatomic) IBOutlet UIButton *chat;

@end
