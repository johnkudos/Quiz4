//
//  Quiz4ViewController.h
//  Quiz4
//
//  Created by John Kudos on 7/28/13.
//  Copyright (c) 2013 KUDOS LAB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Quiz4ViewController : UIViewController



{
    
    // Declare model objects
    int quizCounter;
    NSMutableArray *questionsArray;
    NSMutableArray *answersArray;
    
    // Declare view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
    
}

// Declare controller objects
- (IBAction)nextQuestionBu:(id)sender;
- (IBAction)giveUpBu:(id)sender;




@end
