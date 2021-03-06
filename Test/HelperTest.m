//
//  HelperTest.m
//  SimpleData
//
//  Created by Brian Collins on 09-10-04.
//  Copyright 2009 Brian Collins. All rights reserved.
//

#import "HelperTest.h"
#import "NSString.h"
#import "NSObject.h"
#import "Employee.h"
#import "NSMutableArray.h"

@implementation HelperTest

- (void)testUncapitalizedString {
    STAssertEqualStrings(@"helloWorld", [@"HelloWorld" uncapitalizedString], 
						 @"String should be uncapitalized but camel case preserved");
}

- (void)testDescribeProperties {
	STAssertEqualStrings(@"NSString", [[Employee describeProperties] objectForKey:@"name"], 
						 @"The type of the name property should be an NSString");
}

- (void)testMutableArrayShift {
	NSMutableArray *a = [NSMutableArray arrayWithObjects:@"a", @"b", @"c", nil];
	STAssertEqualStrings(@"a", [a shift], @"unshift should remove and return first element");
	STAssertEqualStrings(@"b", [a shift], @"unshift should remove and return first element");
	STAssertEqualStrings(@"c", [a shift], @"unshift should remove and return first element");
}


@end
