//
//  ViewController.m
//  GetAllSubClassOfClass
//
//  Created by Mobile13 on 6/1/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

#import "ViewController.h"
#import "SupperClass.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//   NSArray *ClassGetSubclasses(Class UIViewController);
    [self getSubClass:(SupperClass.class)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

NSArray *ClassGetSubclasses(Class parentClass)
{
    int numClasses = objc_getClassList(NULL, 0);
    Class *classes = NULL;
    
    classes =  (__unsafe_unretained Class *)malloc(sizeof(Class) * numClasses);
    numClasses = objc_getClassList(classes, numClasses);

    
    NSMutableArray *result = [NSMutableArray array];
    for (NSInteger i = 0; i < numClasses; i++)
    {
        Class superClass = classes[i];
        do
        {
            superClass = class_getSuperclass(superClass);
        } while(superClass && superClass != parentClass);
        
        if (superClass == nil)
        {
            continue;
        }
        
        [result addObject:classes[i]];
    }
    
    free(classes);
    return result;
}
// check method again when use
-(NSArray *)getSubClass:(Class ) parentClass{
    int numClasses = objc_getClassList(NULL, 0);
    Class *classes = NULL;
    
    classes =  (__unsafe_unretained Class *)malloc(sizeof(Class) * numClasses);
    numClasses = objc_getClassList(classes, numClasses);
    
    NSMutableArray *result = [NSMutableArray array];
    for (NSInteger i = 0; i < numClasses; i++)
    {
        Class superClass = classes[i];
        do
        {
            superClass = class_getSuperclass(superClass);
        } while(superClass && superClass != parentClass);
        
        if (superClass == nil)
        {
            continue;
        }
        
        [result addObject:classes[i]];
    }
    
    free(classes);
    
    return result;
}

@end
