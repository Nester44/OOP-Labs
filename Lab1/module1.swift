//
//  module1.swift
//  Lab1
//
//  Created by Никита Нестеров on 11/09/2022.
//

import SwiftUI

struct module1: View {
    var callback: (Int? ) -> Void
    @State private var speed = 50.0
    @State private var isEditing = false

    var body: some View {
        VStack {
            Spacer()

            Text("\(Int(speed))")
                .foregroundColor(isEditing ? .red : .blue)
            Spacer()
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Spacer()
            
            HStack {
                Spacer()

                Button(action: {
                    callback(Int(self.speed))
                },
                label:{ Text("Save")}
                )
                
                Spacer()
                
                Button(action: {
                    callback(nil) // Has to be FIXED
                },
                label:{ Text("Cancel")}
                )
                Spacer()

            }

            
            Spacer()
        }.padding(25)
    }
}
