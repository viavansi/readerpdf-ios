//
//  Annotation.h
//  readerpdf
//
//  Created by Jesús López on 10/11/13.
//  Copyright (c) 2013 Viafirma S.L. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Annotation : NSObject

@property (nonatomic,strong) UIImage *image;
@property (nonatomic) CGPoint point;
@property (nonatomic) CGRect frame;
@property (nonatomic,strong) NSNumber *page;

@end
