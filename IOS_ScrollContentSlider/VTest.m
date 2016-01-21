//
//  VTest.m
//  IOS_ScrollContentSlider
//
//  Created by Galileo Guzman on 21/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "VTest.h"

@implementation VTest

-(VTest *) init{
    VTest *result = nil;
    NSArray* elements = [[NSBundle mainBundle] loadNibNamed: NSStringFromClass([self class]) owner:self options: nil];
    for (id anObject in elements)
    {
        if ([anObject isKindOfClass:[self class]])
        {
            result = anObject;
            break;
        }
    }
    return result;
}

@end
