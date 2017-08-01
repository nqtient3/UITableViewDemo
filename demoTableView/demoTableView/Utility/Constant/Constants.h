//
//  Constants.h
//  Gotadi-ObjectC
//
//  Created by Trung Tran on 6/5/17.
//  Copyright © 2017 Ln. All rights reserved.
//

#import <Foundation/Foundation.h>


/*******************************************
 * Variable Constants (e.g. ones that depend on build type
 *******************************************/

extern NSString *BUNDLE_IDENTIFIER;

/*******************************************
 * App string constant
 *******************************************/


// UserDefault Keys
extern NSString * const kUserDefaultsAppRunningFirstTime;
extern NSString * const kUserDefaultsAppAlreadyStarted;


// NOTIFICATION
extern NSString * const kNotificationFinishedGetAvailability;
extern NSString * const kNotificationFinishedGetFareRules;
extern NSString * const kNotificationShowExtraDetails;

extern NSString * const kNotificationDidChangeLocalPaymentMethod;
extern NSString * const kNotificationDidChangeInternationalPaymentMethod;


// Local Settings
extern NSString * const kLocalSettingsDataRecentSearch;
extern NSString * const kLocalSettingsDataRecentSearchInternal;


// Fonts
extern NSString * const kFontRobotoBold;
extern NSString * const kFontRobotoMedium;
extern NSString * const kFontRobotoRegular;
extern NSString * const kFontRobotoItalic;

//Type Passenger
extern NSInteger const kPassengerAdult;
extern NSInteger const kPassengerChild;
extern NSInteger const kPassengerInfant;

extern NSString * const kTentativeTicket;
extern NSString * const kHoldTicket;
extern NSString * const kIsssueTicket;

/*******************************************
 * App states
 *******************************************/
// Networking
#define USE_SSL                         0
