//
//  Constants.m
//  Gotadi-ObjectC
//
//  Created by Trung Tran on 6/5/17.
//  Copyright © 2017 Ln. All rights reserved.
//

#import "Constants.h"
NSString * BUNDLE_IDENTIFIER = nil;

// UserDefault Keys
NSString * const kUserDefaultsAppRunningFirstTime                    = @"kUserDefaultsAppRunningFirstTime";
NSString * const kUserDefaultsAppAlreadyStarted                      = @"kUserDefaultsAppAlreadyStarted";


// NOTIFICATION
NSString * const kNotificationFinishedGetAvailability                = @"kNotificationFinishedGetAvailability";
NSString * const kNotificationFinishedGetFareRules                   = @"kNotificationFinishedGetFareRules";
NSString * const kNotificationShowExtraDetails                       = @"kNotificationShowExtraDetails";

NSString * const kNotificationDidChangeLocalPaymentMethod            = @"kNotificationDidChangeLocalPaymentMethod";
NSString * const kNotificationDidChangeInternationalPaymentMethod    = @"kNotificationDidChangeInternationalPaymentMethod";

// Local settings
NSString * const kLocalSettingsDataRecentSearch                      = @"recentArray";
NSString * const kLocalSettingsDataRecentSearchInternal              = @"recentArrayInternational";


// Fonts
NSString * const kFontRobotoBold         = @"Roboto-Bold";
NSString * const kFontRobotoMedium       = @"Roboto-Medium";
NSString * const kFontRobotoRegular      = @"Roboto-Regular";
NSString * const kFontRobotoItalic       = @"Roboto-Italic";

//Type Passenger
NSInteger const kPassengerAdult                   = 0;
NSInteger const kPassengerChild                   = 1;
NSInteger const kPassengerInfant                  = 2;

NSString * const kTentativeTicket           = @"TENTATIVE";
NSString * const kHoldTicket                = @"HOLD";
NSString * const kIsssueTicket              = @"ISSUE";



