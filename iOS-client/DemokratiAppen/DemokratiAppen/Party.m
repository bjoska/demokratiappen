//
//  Party.m
//  DemokratiAppen
//
//  Created by Joakim Rydell on 2014-01-11.
//  Copyright (c) 2014 Joakim Rydell. All rights reserved.
//

#import "Party.h"


@implementation Party

- (id) initWithName:(NSString *)aName acronym:(NSString *)anAcronym plusScore:(int)aPlusScore minusScore:(int)aMinusScore color:(NSString *)aColor {
    self = [super init];
    _name = aName;
    _acronym = anAcronym;
    _plusScore = aPlusScore;
    _minusScore = aMinusScore;

    NSString *redStr = [NSString stringWithFormat:@"0x%@", [aColor substringWithRange:NSMakeRange(0, 2)]];
    float red = strtol([redStr cStringUsingEncoding:NSASCIIStringEncoding], NULL, 16) / 255.0;
    NSString *greenStr = [NSString stringWithFormat:@"0x%@", [aColor substringWithRange:NSMakeRange(2, 2)]];
    float green = strtol([greenStr cStringUsingEncoding:NSASCIIStringEncoding], NULL, 16) / 255.0;
    NSString *blueStr = [NSString stringWithFormat:@"0x%@", [aColor substringWithRange:NSMakeRange(4, 2)]];
    float blue = strtol([blueStr cStringUsingEncoding:NSASCIIStringEncoding], NULL, 16) / 255.0;
    _color = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    return self;
}

@end