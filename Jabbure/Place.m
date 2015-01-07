//
//  Place.m
//  Jabbure
//
//  Created by Prasad Ankem on 11/4/14.
//  Copyright (c) 2014 Prasad Ankem. All rights reserved.
//

#import "Place.h"

@interface Place ()
@end

@implementation Place

-(id)initPlace:(NSString *)neighborhood
          name:(NSString *)name
        street:(NSString *)street
          city:(NSString *)city
         state:(NSString *)state
       zipcode:(int)zipcode
      latitude:(float)latitude
     longitude:(float)longitude

{
    if ( self = [super init] )
    {
        self.neighborhood = neighborhood;
        self.name = name;
        self.street = street;
        self.city = city;
        self.state = state;
        self.zipcode = zipcode;
        self.latitude = latitude;
        self.longitude = longitude;
    }
    return self;
}

-(NSString *)address
{
   return [NSString stringWithFormat:@"%@, %@, %@, %d", self.street, self.city, self.state, self.zipcode];
}

@end
