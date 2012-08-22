#import <SpecKit/SpecKit.h>
#import "OCSSelector.h"

SpecKitContext(OCSSelectorSpec) {
  
    __block NSMutableArray* args;
    
    Describe(@"selector", ^{
        
        BeforeEach(^{
            args = [NSMutableArray array];
        });
        
        It(@"is just the string when there are no args", ^{
            SEL selector = [OCSSelector selectorForString: @"noArgs" andArgs: args];
            
            [ExpectObj(NSStringFromSelector(selector)) toBeEqualTo: @"noArgs"];
        });
        
        It(@"has a colon at the end of the string when there is one arg", ^{
            [args addObject: @"anything"];
            SEL selector = [OCSSelector selectorForString: @"withStringArg" andArgs: args];
            
            [ExpectObj(NSStringFromSelector(selector)) toBeEqualTo: @"withStringArg:"];
        });
        
        It(@"has just one colon when there are two args, but no delimiters", ^{
            args = [NSArray arrayWithObjects: @"anything", @"else", nil];
            SEL selector = [OCSSelector selectorForString: @"withMultipleArgs" andArgs: args];
            
            [ExpectObj(NSStringFromSelector(selector)) toBeEqualTo: @"withMultipleArgs:"];
        });
        
        It(@"has just multiple colons when are two args and delimiters", ^{
            args = [NSArray arrayWithObjects: @"first", @"second", @"third", nil];
            SEL selector = [OCSSelector selectorForString: @"three,strings,method" andArgs: args];
            
            [ExpectObj(NSStringFromSelector(selector)) toBeEqualTo: @"three:strings:method:"];
        });
        
    });
  
}
