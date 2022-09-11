//
//  module1.swift
//  Lab1
//
//  Created by Никита Нестеров on 11/09/2022.
//

import SwiftUI

struct module3: View {
    var callback: (Int) -> Void

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()

                Button(action: {
                    callback(1)//mgc num
                },
                label:{ Text("Back")}
                )
                
                Spacer()
                
                Button(action: {
                    callback(0) //mgc num
                },
                label:{ Text("Yes")}
                )
                Spacer()
                
                Button(action: {
                    callback(0) //mgc num
                },
                label:{ Text("Cancel")}
                )
                
                Spacer()

            }

            
            Spacer()
        }.padding(25)
    }
}
