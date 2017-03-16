//
//  InputHandler.m
//  SnakesAndLadders
//
//  Created by Nelson Chow on 2017-03-16.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)inputForPrompt:(NSString *)prompt {
    
    NSLog(@"%@", prompt);
    
    char userInput[255];
    fgets(userInput, 255, stdin);
    
    NSString *inputString = [NSString stringWithUTF8String:userInput];
    NSCharacterSet *unwantedChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [inputString stringByTrimmingCharactersInSet:unwantedChar];
}

@end
