//
//  ContentView.swift
//  Lab1
//
//  Created by Никита Нестеров on 11/09/2022.
//
import SwiftUI

struct ContentView: View {
    @State var work1 : Bool = false
    @State var value : Int!
//    @State var isValueShowed : Bool = false # TODO Implement a specific var for value
    
    @State var currentWindow : Int = 0
    
    func setCurrentWindow(window : Int) -> Void {
        currentWindow = window
    }
    
    func setValue(chosenValue : Int?) -> Void {
        if chosenValue != nil {
            self.value = chosenValue
        }
        
        self.work1 = false
    }


    
    var body: some View {
        return VStack(content: {
            
            HStack(content: {
                Spacer()
                
                Button(
                    action: {
                        self.work1.toggle()
                        setCurrentWindow(window: 0) // mgc num
                    },
                    label:{ Text("Робота 1")}
                )
                
                Spacer()
                
                Button(
                    action: {
                        self.work1 = false
                        if self.currentWindow > 0 { //mgc num
                            setCurrentWindow(window: 0) // mgc num
                        } else {
                            setCurrentWindow(window : 1)
                        }
                    },
                    label:{ Text("Робота 2")}
                )
                Spacer()
            })
            Spacer()
            
            if self.value != nil && !self.work1 && self.currentWindow == 0 { // rewrite with bool var
                Text("Entered value: \(self.value)")
                Spacer()
            }
            
            
            if currentWindow == 1 {
                module2(callback : setCurrentWindow) // remove code duplicaton
                    .frame(width: 350, height: 250)
                    .background(RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.black)
                    .shadow(color: Color("Shadow"), radius: 8, x: 0, y: 4))
                Spacer()
            }
            
            if currentWindow == 2 {
                module3(callback : setCurrentWindow) //remove code dulication
                    .frame(width: 350, height: 250)
                    .background(RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.black)
                    .shadow(color: Color("Shadow"), radius: 8, x: 0, y: 4))
                Spacer()
            }
            
            if work1 {
                module1(callback : setValue) // remove code duplication
                    .frame(width: 350, height: 250)
                    .background(RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.black)
                    .shadow(color: Color("Shadow"), radius: 8, x: 0, y: 4))
                
                Spacer()
            }
        })
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}




