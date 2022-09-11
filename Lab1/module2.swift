//
//  module1.swift
//  Lab1
//
//  Created by Никита Нестеров on 11/09/2022.
//

import SwiftUI

struct module2: View {
    var callback: (Int) -> Void

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()

                Button(action: {
                    callback(2)//mgc num
                },
                label:{ Text("Next")}
                )
                
                Spacer()
                
                Button(action: {
                    callback(0) //mgc num
                },
                label:{ Text("Back")}
                )
                Spacer()

            }

            
            Spacer()
        }.padding(25)
    }
}
