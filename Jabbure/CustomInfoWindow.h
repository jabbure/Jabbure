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

@property (weak, nonatomic) IBOutlet UISlider *guyGirlSlider;
@property (weak, nonatomic) IBOutlet UIImageView *guyGirlSliderLowIcon;
@property (weak, nonatomic) IBOutlet UIImageView *guyGirlSliderHighIcon;

@property (weak, nonatomic) IBOutlet UISlider *ratingSlider;
@property (weak, nonatomic) IBOutlet UIImageView *ratingSliderLowIcon;
@property (weak, nonatomic) IBOutlet UIImageView *ratingSliderHighIcon;

@property (weak, nonatomic) IBOutlet UIButton *checkIn;
@property (weak, nonatomic) IBOutlet UIButton *chat;

@end
