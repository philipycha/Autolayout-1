//
//  LPAViewController.m
//  Autolayout
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPAViewController.h"

@interface LPAViewController ()

@property (nonatomic, weak) UIButton *  squareButton;
@property (nonatomic, weak) UIButton *  portraitButton;
@property (nonatomic, weak) UIButton *  landscapeButton;

@property (nonatomic, weak) UIView *                framingView;
@property (nonatomic, weak) NSLayoutConstraint *    framingViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    framingViewWidth;

@property (nonatomic, weak) UIView *                purpleBox;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxHeight;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxWidth;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxRight;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxBottom;
@property (nonatomic, weak) NSLayoutConstraint *    purpleBoxBottom2;

@property (nonatomic, weak) UIView *                redBox;
@property (nonatomic, weak) NSLayoutConstraint *    redBoxRight;
@property (nonatomic, weak) NSLayoutConstraint *    redBoxTop;
@property (nonatomic, weak) NSLayoutConstraint *    redBoxHeight;
@property (nonatomic, weak) NSLayoutConstraint *    redBoxWidth;

@property (nonatomic, weak) UIView *                orangeBox1;
@property (nonatomic, weak) NSLayoutConstraint *    orangeBox1Height;
@property (nonatomic, weak) NSLayoutConstraint *    orangeBox1Width;
@property (nonatomic, weak) NSLayoutConstraint *    orangeBox1Top;
@property (nonatomic, weak) NSLayoutConstraint *    orangeBox1Left;

@property (nonatomic, weak) UIView *                orangeBox2;
@property (nonatomic, weak) NSLayoutConstraint *    orangeBox2Height;
@property (nonatomic, weak) NSLayoutConstraint *    orangeBox2Width;
@property (nonatomic, weak) NSLayoutConstraint *    orangeBox2Top;
@property (nonatomic, weak) NSLayoutConstraint *    orangeBox2Right;

@property (nonatomic, weak) UIView *                blueBox1;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox1Height;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox1Width;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox1CenterX;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox1CenterY;

@property (nonatomic, weak) UIView *                blueBox2;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox2Height;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox2Width;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox2CenterX;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox2CenterY;

@property (nonatomic, weak) UIView *                blueBox3;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox3Height;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox3Width;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox3CenterX;
@property (nonatomic, weak) NSLayoutConstraint *    blueBox3CenterY;

@property (nonatomic, weak) UIView *                yellowBox;
@property (nonatomic, weak) NSLayoutConstraint *    yellowBoxHeight;
@property (nonatomic, weak) NSLayoutConstraint *    yellowBoxLeft;
@property (nonatomic, weak) NSLayoutConstraint *    yellowBoxRight;
@property (nonatomic, weak) NSLayoutConstraint *    yellowBoxBottom;

@property (nonatomic, weak) UIButton *              hideYellowButton;
@property (nonatomic, weak) NSLayoutConstraint *    hideButtonTop;
@property (nonatomic, weak) NSLayoutConstraint *    hideButtonWidth;
@property (nonatomic, weak) NSLayoutConstraint *    hideButtonLeft;
@property (nonatomic, weak) NSLayoutConstraint *    hideButtonHeight;




@end

@implementation LPAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *squareButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [squareButton setTitle:@"Square" forState:UIControlStateNormal];
    [squareButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:squareButton];
    squareButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.squareButton = squareButton;
    
    UIButton *portraitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [portraitButton setTitle:@"Portrait" forState:UIControlStateNormal];
    [portraitButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:portraitButton];
    portraitButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.portraitButton = portraitButton;
    
    UIButton *landscapeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [landscapeButton setTitle:@"Landscape" forState:UIControlStateNormal];
    [landscapeButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:landscapeButton];
    landscapeButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.landscapeButton = landscapeButton;
    
    UIView *framingView = [[UIView alloc] initWithFrame:CGRectZero];
    framingView.translatesAutoresizingMaskIntoConstraints = NO;
    framingView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:framingView];
    self.framingView = framingView;
    
    NSString *buttonsHorizontalConstraints = @"|[squareButton(==portraitButton)][portraitButton(==landscapeButton)][landscapeButton]|";
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:buttonsHorizontalConstraints
                                                                      options:NSLayoutFormatAlignAllCenterY
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(squareButton, portraitButton, landscapeButton)]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:squareButton
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:-50.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:framingView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:framingView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:-50.0]];
    
    NSLayoutConstraint *framingViewHeight = [NSLayoutConstraint constraintWithItem:framingView
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                                        multiplier:1.0
                                                                          constant:500.0];
    
    NSLayoutConstraint *framingViewWidth = [NSLayoutConstraint constraintWithItem:framingView
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:500.0];
    
    [framingView addConstraint:framingViewHeight];
    [framingView addConstraint:framingViewWidth];
    
    self.framingViewHeight = framingViewHeight;
    self.framingViewWidth = framingViewWidth;
    
    // Set up your views and constraints here
    
    
    UIView *purpleBox = [[UIView alloc] initWithFrame:CGRectZero];
    purpleBox.translatesAutoresizingMaskIntoConstraints = NO;
    purpleBox.backgroundColor = [UIColor purpleColor];
    [self.framingView addSubview:purpleBox];
    self.purpleBox = purpleBox;
    
    NSLayoutConstraint *purpleBoxRight = [NSLayoutConstraint constraintWithItem:purpleBox
                                                                      attribute:NSLayoutAttributeRight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:framingView
                                                                      attribute:NSLayoutAttributeRight
                                                                     multiplier:1.0
                                                                       constant:-20];
    
    NSLayoutConstraint *purpleBoxBottom = [NSLayoutConstraint constraintWithItem:purpleBox
                                                                       attribute:NSLayoutAttributeBottom
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:framingView
                                                                       attribute:NSLayoutAttributeBottom
                                                                      multiplier:1.0
                                                                        constant:-20];
    
//   NSLayoutConstraint *purpleBoxBottom2 = [NSLayoutConstraint constraintWithItem:purpleBox
//                                                                       attribute:NSLayoutAttributeBottom
//                                                                       relatedBy:NSLayoutRelationEqual
//                                                                          toItem:self.yellowBox
//                                                                       attribute:NSLayoutAttributeTop
//                                                                      multiplier:1.0
//                                                                        constant:-20];

    
    NSLayoutConstraint *purpleBoxWidth = [NSLayoutConstraint constraintWithItem:purpleBox
                                                                      attribute:NSLayoutAttributeWidth
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:framingView
                                                                      attribute:NSLayoutAttributeWidth
                                                                     multiplier:(305.0/500.0)
                                                                       constant:0];
    
    NSLayoutConstraint *purpleBoxHeight = [NSLayoutConstraint constraintWithItem:purpleBox
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:50];
    
    [framingView addConstraint:purpleBoxRight];
    [framingView addConstraint:purpleBoxBottom];
    [framingView addConstraint:purpleBoxWidth];
    [framingView addConstraint:purpleBoxHeight];
//    [framingView addConstraint:purpleBoxBottom2];
    
    self.purpleBoxRight = purpleBoxRight;
    self.purpleBoxBottom = purpleBoxBottom;
//    self.purpleBoxBottom2 = purpleBoxBottom2;
    self.purpleBoxWidth = purpleBoxWidth;
    self.purpleBoxHeight = purpleBoxHeight;
    
    UIView *redBox = [[UIView alloc] initWithFrame:CGRectZero];
    redBox.translatesAutoresizingMaskIntoConstraints = NO;
    redBox.backgroundColor = [UIColor redColor];
    [self.framingView addSubview:redBox];
    self.redBox = redBox;
    
    NSLayoutConstraint *redBoxRight = [NSLayoutConstraint constraintWithItem:redBox
                                                                      attribute:NSLayoutAttributeRight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:framingView
                                                                      attribute:NSLayoutAttributeRight
                                                                     multiplier:1.0
                                                                       constant:-20];
    
    NSLayoutConstraint *redBoxTop = [NSLayoutConstraint constraintWithItem:redBox
                                                                       attribute:NSLayoutAttributeTop
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:framingView
                                                                       attribute:NSLayoutAttributeTop
                                                                      multiplier:1.0
                                                                        constant:20];
    
    NSLayoutConstraint *redBoxHeight = [NSLayoutConstraint constraintWithItem:redBox
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:50];
    
    NSLayoutConstraint *redBoxWidth = [NSLayoutConstraint constraintWithItem:redBox
                                                                    attribute:NSLayoutAttributeWidth
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:nil
                                                                    attribute:NSLayoutAttributeNotAnAttribute
                                                                   multiplier:1.0
                                                                     constant:150];
   
    
    [framingView addConstraint:redBoxTop];
    [framingView addConstraint:redBoxRight];
    [framingView addConstraint:redBoxHeight];
    [framingView addConstraint:redBoxWidth];
    
    self.redBoxRight = redBoxRight;
    self.redBoxTop = redBoxTop;
    self.redBoxHeight = redBoxHeight;
    self.redBoxWidth = redBoxWidth;
    
    UIView *orangeBox1 = [[UIView alloc] initWithFrame:CGRectZero];
    orangeBox1.translatesAutoresizingMaskIntoConstraints = NO;
    orangeBox1.backgroundColor = [UIColor orangeColor];
    [self.redBox addSubview:orangeBox1];
    self.orangeBox1 = orangeBox1;
    
    NSLayoutConstraint *orangeBox1Left = [NSLayoutConstraint constraintWithItem:orangeBox1
                                                                   attribute:NSLayoutAttributeLeft
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:redBox
                                                                   attribute:NSLayoutAttributeLeft
                                                                  multiplier:1.0
                                                                    constant:10];
    
    NSLayoutConstraint *orangeBox1Top = [NSLayoutConstraint constraintWithItem:orangeBox1
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:redBox
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1.0
                                                                  constant:10];
    
    NSLayoutConstraint *orangeBox1Height = [NSLayoutConstraint constraintWithItem:orangeBox1
                                                                    attribute:NSLayoutAttributeHeight
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:nil
                                                                    attribute:NSLayoutAttributeNotAnAttribute
                                                                   multiplier:1.0
                                                                     constant:30];
    
    NSLayoutConstraint *orangeBox1Width = [NSLayoutConstraint constraintWithItem:orangeBox1
                                                                   attribute:NSLayoutAttributeWidth
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1.0
                                                                    constant:70];

    [redBox addConstraint:orangeBox1Top];
    [redBox addConstraint:orangeBox1Left];
    [redBox addConstraint:orangeBox1Height];
    [redBox addConstraint:orangeBox1Width];
    
    self.orangeBox1Width = orangeBox1Width;
    self.orangeBox1Height = orangeBox1Height;
    self.orangeBox1Left = orangeBox1Left;
    self.orangeBox1Top = orangeBox1Top;
    
    UIView *orangeBox2 = [[UIView alloc] initWithFrame:CGRectZero];
    orangeBox2.translatesAutoresizingMaskIntoConstraints = NO;
    orangeBox2.backgroundColor = [UIColor orangeColor];
    [self.redBox addSubview:orangeBox2];
    self.orangeBox2 = orangeBox2;
    
    NSLayoutConstraint *orangeBox2Right = [NSLayoutConstraint constraintWithItem:orangeBox2
                                                                      attribute:NSLayoutAttributeRight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:redBox
                                                                      attribute:NSLayoutAttributeRight
                                                                     multiplier:1.0
                                                                       constant:-10];
    
    NSLayoutConstraint *orangeBox2Top = [NSLayoutConstraint constraintWithItem:orangeBox2
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:redBox
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1.0
                                                                      constant:10];
    
    NSLayoutConstraint *orangeBox2Height = [NSLayoutConstraint constraintWithItem:orangeBox2
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:30];
    
    NSLayoutConstraint *orangeBox2Width = [NSLayoutConstraint constraintWithItem:orangeBox2
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:50];
    
    [redBox addConstraint:orangeBox2Top];
    [redBox addConstraint:orangeBox2Right];
    [redBox addConstraint:orangeBox2Height];
    [redBox addConstraint:orangeBox2Width];
    
    self.orangeBox2Width = orangeBox2Width;
    self.orangeBox2Height = orangeBox2Height;
    self.orangeBox2Right = orangeBox2Right;
    self.orangeBox2Top = orangeBox2Top;
    
    UIView *blueBox1 = [[UIView alloc] initWithFrame:CGRectZero];
    blueBox1.translatesAutoresizingMaskIntoConstraints = NO;
    blueBox1.backgroundColor = [UIColor blueColor];
    [self.framingView addSubview:blueBox1];
    self.blueBox1 = blueBox1;
    
    
    NSLayoutConstraint *blueBox1CenterY = [NSLayoutConstraint constraintWithItem:blueBox1
                                                                     attribute:NSLayoutAttributeCenterY
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:framingView
                                                                     attribute:NSLayoutAttributeCenterY
                                                                    multiplier:1.0
                                                                      constant:0];
    
    NSLayoutConstraint *blueBox1CenterX = [NSLayoutConstraint constraintWithItem:blueBox1
                                                                   attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:framingView
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1.0
                                                                    constant:0];
    
    NSLayoutConstraint *blueBox1Height = [NSLayoutConstraint constraintWithItem:blueBox1
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:50];
    
    NSLayoutConstraint *blueBox1Width = [NSLayoutConstraint constraintWithItem:blueBox1
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:50];
    
    [framingView addConstraint:blueBox1CenterY];
    [framingView addConstraint:blueBox1Width];
    [framingView addConstraint:blueBox1Height];
    [framingView addConstraint:blueBox1CenterX];
    
    self.blueBox1Height = blueBox1Height;
    self.blueBox1Width = blueBox1Width;
    self.blueBox1CenterY = blueBox1CenterY;
    self.blueBox1CenterX = blueBox1CenterX;
    
    UIView *blueBox2 = [[UIView alloc] initWithFrame:CGRectZero];
    blueBox2.translatesAutoresizingMaskIntoConstraints = NO;
    blueBox2.backgroundColor = [UIColor blueColor];
    [self.framingView addSubview:blueBox2];
    self.blueBox2 = blueBox2;
    
    
    NSLayoutConstraint *blueBox2CenterY = [NSLayoutConstraint constraintWithItem:blueBox2
                                                                       attribute:NSLayoutAttributeCenterY
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:framingView
                                                                       attribute:NSLayoutAttributeCenterY
                                                                      multiplier:0.5
                                                                        constant:0];
    
    NSLayoutConstraint *blueBox2CenterX = [NSLayoutConstraint constraintWithItem:blueBox2
                                                                       attribute:NSLayoutAttributeCenterX
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:framingView
                                                                       attribute:NSLayoutAttributeCenterX
                                                                      multiplier:1.0
                                                                        constant:0];
    
    NSLayoutConstraint *blueBox2Height = [NSLayoutConstraint constraintWithItem:blueBox2
                                                                      attribute:NSLayoutAttributeHeight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:50];
    
    NSLayoutConstraint *blueBox2Width = [NSLayoutConstraint constraintWithItem:blueBox2
                                                                     attribute:NSLayoutAttributeWidth
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:nil
                                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                                    multiplier:1.0
                                                                      constant:50];
    
    [framingView addConstraint:blueBox2CenterY];
    [framingView addConstraint:blueBox2Width];
    [framingView addConstraint:blueBox2Height];
    [framingView addConstraint:blueBox2CenterX];
    
    self.blueBox2Height = blueBox2Height;
    self.blueBox2Width = blueBox2Width;
    self.blueBox2CenterY = blueBox2CenterY;
    self.blueBox2CenterX = blueBox2CenterX;

    UIView *blueBox3 = [[UIView alloc] initWithFrame:CGRectZero];
    blueBox3.translatesAutoresizingMaskIntoConstraints = NO;
    blueBox3.backgroundColor = [UIColor blueColor];
    [self.framingView addSubview:blueBox3];
    self.blueBox3 = blueBox3;
    
    
    NSLayoutConstraint *blueBox3CenterY = [NSLayoutConstraint constraintWithItem:blueBox3
                                                                       attribute:NSLayoutAttributeCenterY
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:framingView
                                                                       attribute:NSLayoutAttributeCenterY
                                                                      multiplier:1.5
                                                                        constant:0];
    
    NSLayoutConstraint *blueBox3CenterX = [NSLayoutConstraint constraintWithItem:blueBox3
                                                                       attribute:NSLayoutAttributeCenterX
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:framingView
                                                                       attribute:NSLayoutAttributeCenterX
                                                                      multiplier:1.0
                                                                        constant:0];
    
    NSLayoutConstraint *blueBox3Height = [NSLayoutConstraint constraintWithItem:blueBox3
                                                                      attribute:NSLayoutAttributeHeight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:50];
    
    NSLayoutConstraint *blueBox3Width = [NSLayoutConstraint constraintWithItem:blueBox3
                                                                     attribute:NSLayoutAttributeWidth
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:nil
                                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                                    multiplier:1.0
                                                                      constant:50];
    
    [framingView addConstraint:blueBox3CenterY];
    [framingView addConstraint:blueBox3Width];
    [framingView addConstraint:blueBox3Height];
    [framingView addConstraint:blueBox3CenterX];
    
    self.blueBox3Height = blueBox3Height;
    self.blueBox3Width = blueBox3Width;
    self.blueBox3CenterY = blueBox3CenterY;
    self.blueBox3CenterX = blueBox3CenterX;
    
    
    UIView *yellowBox = [[UIView alloc] initWithFrame:CGRectZero];
    yellowBox.translatesAutoresizingMaskIntoConstraints = NO;
    yellowBox.backgroundColor = [UIColor yellowColor];
    [self.framingView addSubview:yellowBox];
    self.yellowBox = yellowBox;
    
    NSLayoutConstraint *yellowBoxHeight = [NSLayoutConstraint constraintWithItem:yellowBox
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:150];
    
    NSLayoutConstraint *yellowBoxLeft = [NSLayoutConstraint constraintWithItem:yellowBox
                                                                     attribute:NSLayoutAttributeLeft
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:framingView
                                                                     attribute:NSLayoutAttributeLeft
                                                                    multiplier:1.0
                                                                      constant:0];
    
    NSLayoutConstraint *yellowBoxRight = [NSLayoutConstraint constraintWithItem:yellowBox
                                                                      attribute:NSLayoutAttributeRight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:framingView
                                                                      attribute:NSLayoutAttributeRight
                                                                     multiplier:1.0
                                                                       constant:0];
    
    NSLayoutConstraint *yellowBoxBottom = [NSLayoutConstraint constraintWithItem:yellowBox
                                                                       attribute:NSLayoutAttributeBottom
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:framingView
                                                                       attribute:NSLayoutAttributeBottom
                                                                      multiplier:1.0
                                                                        constant:0];
    
    [framingView addConstraint:yellowBoxLeft];
    [framingView addConstraint:yellowBoxRight];
    [framingView addConstraint:yellowBoxHeight];
    [framingView addConstraint:yellowBoxBottom];
    
    self.yellowBoxBottom = yellowBoxBottom;
    self.yellowBoxHeight = yellowBoxHeight;
    self.yellowBoxRight = yellowBoxRight;
    self.yellowBoxLeft = yellowBoxLeft;
    

       UIButton *hideYellowButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [hideYellowButton setTitle:@"Hide Box" forState:UIControlStateNormal];
    [hideYellowButton addTarget:self action:@selector(hideYellowBox:) forControlEvents:UIControlEventTouchUpInside];
//    [hideYellowButton sizeToFit];
    [self.framingView addSubview:hideYellowButton];
    hideYellowButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.hideYellowButton = hideYellowButton;
    
    NSLayoutConstraint *hideButtonHeight = [NSLayoutConstraint constraintWithItem:hideYellowButton
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:20];
    
//    NSLayoutConstraint *hideButtonWidth = [NSLayoutConstraint constraintWithItem:hideYellowButton
//                                                                     attribute:NSLayoutAttributeWidth
//                                                                     relatedBy:NSLayoutRelationEqual
//                                                                        toItem:nil
//                                                                     attribute:NSLayoutAttributeNotAnAttribute
//                                                                    multiplier:1.0
//                                                                      constant:35];
    
    NSLayoutConstraint *hideButtonTop = [NSLayoutConstraint constraintWithItem:hideYellowButton
                                                                      attribute:NSLayoutAttributeTop
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:framingView
                                                                      attribute:NSLayoutAttributeTop
                                                                     multiplier:1.0
                                                                      constant:40];
    
    NSLayoutConstraint *hideButtonLeft = [NSLayoutConstraint constraintWithItem:hideYellowButton
                                                                       attribute:NSLayoutAttributeCenterX
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:framingView
                                                                       attribute:NSLayoutAttributeCenterX
                                                                      multiplier:1.0
                                                                        constant:0];
    
    [framingView addConstraint:hideButtonTop];
    [framingView addConstraint:hideButtonLeft];
//    [framingView addConstraint:hideButtonWidth];
    [framingView addConstraint:hideButtonHeight];
    
    self.hideButtonHeight = hideButtonHeight;
//    self.hideButtonWidth = hideButtonWidth;
    self.hideButtonLeft = hideButtonLeft;
    self.hideButtonTop = hideButtonTop;
    
}


- (void)resizeFramingView:(id)sender
{
    CGFloat newWidth = 0.0;
    CGFloat newHeight = 0.0;
    
    if (sender == self.squareButton) {
        newWidth = 500.0;
        newHeight = 500.0;
    } else if (sender == self.portraitButton) {
        newWidth = 350.0;
        newHeight = 550.0;
    } else if (sender == self.landscapeButton) {
        newWidth = 900.0;
        newHeight = 300.0;
    }
    
    [UIView animateWithDuration:2.0 animations:^(){
        self.framingViewHeight.constant = newHeight;
        self.framingViewWidth.constant = newWidth;
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)hideYellowBox:(id)sender {
    
//    self.yellowBox.hidden = YES;
    
    if (self.yellowBox.alpha == 0) {
        
        [UIView animateWithDuration:1.0 animations:^{
            
            self.yellowBox.alpha = 1;
            
            [self.view layoutIfNeeded];
            
            
        }];
    }
    else
    {
        [UIView animateWithDuration:1.0 animations:^{
            
            self.yellowBox.alpha = 0;
            
            [self.view layoutIfNeeded];
            
            
        }];
    }
    
    
    
    
}




@end
