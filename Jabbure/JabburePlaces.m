//
//  LatitudeLongitude.m
//  Jabbure
//
//  Created by Prasad Ankem on 11/4/14.
//  Copyright (c) 2014 Prasad Ankem. All rights reserved.
//

#import "JabburePlaces.h"
#import "parseCSV.h"
#import "Place.h"

@interface JabburePlaces ()
@end

@implementation JabburePlaces

+ (NSArray *)places
{
    static NSArray *_places;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        CSVParser *parser = [CSVParser new];
        [parser openFile:[[NSBundle mainBundle] pathForResource:@"places" ofType:@"csv"]];
        NSMutableArray *csvContent = [parser parseFile];
        NSMutableArray *places = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < [csvContent count]; i++)
        {
            NSArray *placeArray = [csvContent objectAtIndex:i];
            Place *place = [[Place alloc] initPlace:[placeArray objectAtIndex:0]
                                               name:[placeArray objectAtIndex:1]
                                             street:[placeArray objectAtIndex:2]
                                               city:[placeArray objectAtIndex:3]
                                              state:[placeArray objectAtIndex:4]
                                            zipcode:[[placeArray objectAtIndex:5] intValue]
                                           latitude:[[placeArray objectAtIndex:6] floatValue]
                                          longitude:[[placeArray objectAtIndex:7] floatValue]];
            [places addObject:place];
        }
                
        _places = [NSArray arrayWithArray:places];
    });
    
    return _places;
}

@end
