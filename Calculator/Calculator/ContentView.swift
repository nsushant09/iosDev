//
//  ContentView.swift
//  Calculator
//
//  Created by SushantNeupane on 6/29/22.
//

import SwiftUI

struct ContentView:View {
    
    @State private var finalResult : String = ""
    @State private var currentCalculationString : String = ""
    @State private var isCurrentCalculationHidden : Bool = false
    
    @State private var previousNumber : String = "0"
    @State private var currentNumber : String = ""
    @State private var total : Double = 0.0
    
    @State private var lastAssignedOperator : String = "+"
    
    var body: some View {
        VStack(spacing: 16){
            Spacer()
            Text(finalResult)
                .frame(width: 350, height: .infinity, alignment: .trailing)
                .font(.system(size: 64, weight: .bold, design: .rounded))
                .lineLimit(1)
            Text(currentCalculationString)
                .frame(width: 350, height: .infinity, alignment: .trailing)
                .font(.system(size: 32, weight: .semibold, design: .default))
                .lineLimit(1)
                .opacity(isCurrentCalculationHidden ? 0.0 : 1.0)
            Spacer()
            VStack{

                HStack{
                    customButton(title: "7",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "7")})
                    customButton(title: "8",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "8")})
                    customButton(title: "9",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "9")})
                    customButton(title: "*",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "*")})
                }
                HStack{
                    customButton(title: "4",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "4")})
                    customButton(title: "5",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "5")})
                    customButton(title: "6",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "6")})
                    customButton(title: "-",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "-")})
                }
                HStack{
                    customButton(title: "1",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "1")})
                    customButton(title: "2",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "2")})
                    customButton(title: "3",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "3")})
                    customButton(title: "+",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "+")})
                }
                HStack{
                    customButton(title: "0",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "0")})
                    customButton(title: "C",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "C")})
                    
                    Button(
                        action:{
                            onButtonClick(clickedButton: "=")
                        },
                        label: {
                            Text("=")
                                .foregroundColor(Color.white)
                                .font(.system(size: 32, weight: .semibold, design: .monospaced))
                        })
                    .frame(width: 80, height: 80)
                    .background(Color.black)
                    .clipShape(Circle())
                    customButton(title: "÷",contentColor : Color.gray, btnAction: {onButtonClick(clickedButton: "/")})
                    
                }
            }
            .padding(16)
            
            
        }
    }
    
    func customButton(title : String,contentColor : Color, btnAction : @escaping () -> Void) -> some View{
        Button(
            action: btnAction,
            label: {
                Text(title)
                    .foregroundColor(Color.black)
                    .font(.system(size: 32, weight: .semibold, design: .monospaced))
            })
        .frame(width: 80, height: 80)
        .background(Color("lightorange"))
        .clipShape(Circle())
    }
    
    func additionOperator(previous : Double , current : Double){
        total = previous + current
        finalResult = String(total)
        previousNumber = finalResult
        currentNumber = ""
    }
    
    func subtractionOperator(previous : Double , current : Double){
        total = previous - current
        finalResult = String(total)
        previousNumber = finalResult
        currentNumber = ""
    }
    
    func multiplicationOperator(previous : Double , current : Double){
        total = previous * current
        finalResult = String(total)
        previousNumber = finalResult
        currentNumber = ""
    }
    
    func divisionOperator(previous : Double , current : Double){
        total = previous / current
        finalResult = String(total)
        previousNumber = finalResult
        currentNumber = ""
    }
    
    func performRequiredOperation(){
        if(lastAssignedOperator == "+"){
            additionOperator(previous: (Double(previousNumber) ?? 0), current: (Double (currentNumber) ?? 0))
            
            lastAssignedOperator = "+"
            
        }else if(lastAssignedOperator == "-"){
            subtractionOperator(previous: (Double(previousNumber) ?? 0), current: (Double (currentNumber) ?? 0))
            
            lastAssignedOperator = "-"
            
        }else if(lastAssignedOperator == "*"){
            multiplicationOperator(previous: (Double(previousNumber) ?? 0), current: (Double (currentNumber) ?? 0))
            
            lastAssignedOperator = "*"
            

        }else if(lastAssignedOperator == "/"){
            divisionOperator(previous: (Double(previousNumber) ?? 0), current: (Double (currentNumber) ?? 0))
            
            lastAssignedOperator = "/"
        
        }
    }
    
    func onButtonClick(clickedButton : String){
        isCurrentCalculationHidden = false
        
        switch(clickedButton){
        case "back": currentCalculationString.removeLast()
        case "C": do{
            currentCalculationString.removeAll()
            previousNumber = "0"
            currentNumber = ""
            finalResult = ""
            lastAssignedOperator = "+"
        }
        case "=": do{
            isCurrentCalculationHidden = true
            performRequiredOperation()
            currentCalculationString.removeAll()
            currentCalculationString = finalResult
            lastAssignedOperator = "+"
        }
        default: do {

            if(clickedButton == "+"){
                performRequiredOperation()
                currentCalculationString += clickedButton
                lastAssignedOperator = "+"
            }else if(clickedButton == "-"){
                performRequiredOperation()
                lastAssignedOperator = "-"
                currentCalculationString += clickedButton
            }else if(clickedButton == "*"){
                performRequiredOperation()
                lastAssignedOperator = "*"
                currentCalculationString += clickedButton

            }else if(clickedButton == "/"){
                performRequiredOperation()
                lastAssignedOperator = "/"
                currentCalculationString += clickedButton

            }else{
                currentCalculationString += clickedButton
                currentNumber+=clickedButton
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
