//
//  ViewController.m
//  Calculator
//
//  Created by Ahmed Fekry on 08/01/2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    int firstNum;
    int secNum;
    char op;
    int result;
    NSMutableString *stringResult;
    NSMutableString *firstNumString;
    NSMutableString *secNumString;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    firstNumString = [NSMutableString new];
    secNumString = [NSMutableString new];
    stringResult = [NSMutableString new];
    firstNum = 0;
    secNum = 0;
    op = '0';
    result = 0;
    // Do any additional setup after loading the view.
}

- (IBAction)enterValues:(UIButton *)sender {
    if(op == '0'){
        switch(sender.tag){
            case 0:
                firstNum = 0;
                [firstNumString appendString:@"0" ];
                _calcTextField.text=firstNumString;
                break;
            case 1:
               // firstNum = 1;
                [firstNumString appendString:@"1" ];
                _calcTextField.text=firstNumString;
                break;
            case 2:
              //  firstNum = 2;
                [firstNumString appendString:@"2" ];
                _calcTextField.text=firstNumString;
                break;
            case 3:
              //  firstNum = 3;
                [firstNumString appendString:@"3" ];
                _calcTextField.text=firstNumString;
                break;
            case 4:
              //  firstNum = 4;
                [firstNumString appendString:@"4" ];
                _calcTextField.text=firstNumString;
                break;
            case 5:
             //   firstNum = 5;
                [firstNumString appendString:@"5" ];
                _calcTextField.text=firstNumString;
                break;
            case 6:
              //  firstNum = 6;
                [firstNumString appendString:@"6" ];
                _calcTextField.text=firstNumString;
                break;
            case 7:
             //   firstNum = 7;
                [firstNumString appendString:@"7" ];
                _calcTextField.text=firstNumString;
                break;
            case 8:
             //   firstNum = 8;
                [firstNumString appendString:@"8" ];
                _calcTextField.text=firstNumString;
                break;
            case 9:
             //   firstNum = 9;
                [firstNumString appendString:@"9" ];
                _calcTextField.text=firstNumString;
                break;
        }
        firstNum = [[_calcTextField text] intValue] ;
    }else{
        switch(sender.tag){
            case 0:
                //secNum = 0;
                [secNumString appendString:@"0" ];
                _calcTextField.text=secNumString;
                break;
            case 1:
               // secNum = 1;
                [secNumString appendString:@"1" ];
                _calcTextField.text=secNumString;
                break;
            case 2:
               // secNum = 2;
                [secNumString appendString:@"2" ];
                _calcTextField.text=secNumString;
                break;
            case 3:
              //  secNum = 3;
                [secNumString appendString:@"3" ];
                _calcTextField.text=secNumString;
                break;
            case 4:
               // secNum = 4;
                [secNumString appendString:@"4" ];
                _calcTextField.text=secNumString;
                break;
            case 5:
            //    secNum = 5;
                [secNumString appendString:@"5" ];
                _calcTextField.text=secNumString;
                break;
            case 6:
              //  secNum = 6;
                [secNumString appendString:@"6" ];
                _calcTextField.text=secNumString;
                break;
            case 7:
              //  secNum = 7;
                [secNumString appendString:@"7" ];
                _calcTextField.text=secNumString;
                break;
            case 8:
              //  secNum = 8;
                [secNumString appendString:@"8" ];
                _calcTextField.text=secNumString;
                break;
            case 9:
              //  secNum = 9;
                [secNumString appendString:@"9" ];
                _calcTextField.text=secNumString;
                break;
        }
        secNum = [[_calcTextField text] intValue] ;
    }
    
}

- (IBAction)enterOperation:(UIButton *)sender {
    switch(sender.tag){
        case 10:
            op = '+';
            _calcTextField.text = @"+";
            break;
        case 11:
            op = '-';
            _calcTextField.text = @"-";
            break;
        case 12:
            op = '*';
            _calcTextField.text = @"*";
            break;
        case 13:
            op = '/';
            _calcTextField.text = @"/";
            break;
    }
}

- (IBAction)showResult:(id)sender {
    switch(op){
        case '+':
            result =firstNum + secNum ;
            stringResult = [NSMutableString stringWithFormat:@"%i",(int) result];
            _calcTextField.text = stringResult ;
            break;
        case '-':
            result = firstNum  - secNum ;
            stringResult = [NSMutableString stringWithFormat:@"%i",(int) result];
            _calcTextField.text = stringResult ;
            break;
        case '*':
            result = firstNum * secNum ;
            stringResult = [NSMutableString stringWithFormat:@"%i",(int) result];
            _calcTextField.text = stringResult ;
            break;
        case '/':
            result = firstNum  / secNum ;
            stringResult = [NSMutableString stringWithFormat:@"%i",(int) result];
            _calcTextField.text = stringResult ;
            break;
    }
    
}

- (IBAction)clearScreen:(id)sender {
    firstNumString = [NSMutableString new];
    secNumString = [NSMutableString new];
    stringResult = [NSMutableString new];
    firstNum = 0;
    secNum = 0;
    op = '0';
    result = 0;
    _calcTextField.text = @"" ;

    
}






@end
