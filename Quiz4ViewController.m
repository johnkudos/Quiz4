//
//  Quiz4ViewController.m
//  Quiz4
//
//  Created by John Kudos on 7/28/13.
//  Copyright (c) 2013 KUDOS LAB. All rights reserved.
//

#import "Quiz4ViewController.h"

@interface Quiz4ViewController ()

@end

@implementation Quiz4ViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Create Q&A arrays and make pointers point to them
        questionsArray = [[NSMutableArray alloc] init];
        answersArray = [[NSMutableArray alloc] init];
        // Add questions and answers
        [questionsArray addObject:@"Capital of LA"];
        [answersArray addObject:@"Los Angeles"];
        [questionsArray addObject:@"Indonesian Currency"];
        [answersArray addObject:@"Rupiah"];
        [questionsArray addObject:@"Wine is made of"];
        [answersArray addObject:@"Grapes"];
    }
    return self;
}

// Declare button methods
- (IBAction)nextQuestionBu:(id)sender {
    // advance quiz counter then check to reset
    quizCounter++;
    if (quizCounter == [questionsArray count]) {
        quizCounter = 0;
    }
    // display question from array
    NSString *currentQuestion = [questionsArray objectAtIndex:quizCounter];
    [questionField setText:currentQuestion];
    // reset answer
    [answerField setText:@"?"];
}
- (IBAction)giveUpBu:(id)sender {
    // display answer from array
    NSString *currentAnswer = [answersArray objectAtIndex:quizCounter];
    [answerField setText:currentAnswer];
}



@end
