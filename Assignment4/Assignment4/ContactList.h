//
//  ContactList.h
//  Assignment4
//
//  Created by Tima on 2018-04-18.
//  Copyright © 2018 Tima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@class Contact; //tell compiler we have this class

@interface ContactList : NSObject

@property(nonatomic, strong)NSMutableArray *contacts;
- (instancetype)init;
- (void) addContact: (Contact *) newContact;
- (BOOL) shouldHaveContactWith: (NSString *) keyword;
- (Contact *) findContact: (NSString* ) keyword;

@end
