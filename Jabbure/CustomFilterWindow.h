//
//  CustomFilterWindow.h
//  Jabbure
//
//  Created by Prasad Ankem on 1/6/15.
//  Copyright (c) 2015 Prasad Ankem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomFilterWindow : UIView

@property (strong) IBOutlet UISlider *guyGirlSlider;
@property (strong) IBOutlet UIImageView *guyGirlSliderLowIcon;
@property (strong) IBOutlet UIImageView *guyGirlSliderHighIcon;

@property (strong) IBOutlet UISlider *ratingSlider;
@property (strong) IBOutlet UIImageView *ratingSliderLowIcon;
@property (strong) IBOutlet UIImageView *ratingSliderHighIcon;

@end
