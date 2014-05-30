//
//  BNRQuizAppViewController.m
//  QuizApp
//
//  Created by shruti gupta on 30/05/14.
//  Copyright (c) 2014 Shruti Gupta. All rights reserved.
//

//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by shruti gupta on 27/05/14.
//  Copyright (c) 2014 Shruti Gupta. All rights reserved.
//

#import "BNRAppDelegate.h"
#import "BNRQuizAppViewController.h"



@interface BNRQuizAppViewController ()

@property(nonatomic,weak) IBOutlet
UILabel *questionLabel;

@property(nonatomic,weak) IBOutlet UILabel *answerLabel;

@property(nonatomic)int currentQuestionIndex;
@property(nonatomic,copy) NSArray *questions;
@property(nonatomic,copy) NSArray *answers;

@end

@implementation BNRQuizAppViewController



-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //call the init method implemented by super class
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        //create two arrays filled with questions and answers
        //and make the pointers to point them
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7",
                           @"What is the capital of Vermont?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
        
        //Return the address of the new object
        
        
        
    }
    return self;
}

-(IBAction)showQuestion:(id)sender
{
    //step to the next question
    self.currentQuestionIndex++;
    
    //Am I past the last question?
    if(self.currentQuestionIndex == [self.questions count])
    {
        //Go back to the first question.
        self.currentQuestionIndex = 0;
    }
    
    //Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the question in the question label
    self.questionLabel.text = question;
    
    //Reset the Answer label
    self.answerLabel.text = @"???";
    
}

-(IBAction)showAnswer:(id)sender
{
    //What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //Display it in the answer label
    self.answerLabel.text = answer;
    
}


@end
