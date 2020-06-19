//
//  ContentView.swift
//  Bullseye
//
//  Created by Maggie Yi on 6/18/20.
//  Copyright © 2020 Mobile Developers at Berkeley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: data for pop-up boolean values
    //Indicates that if the body changed, state is in sync
    @State var alertIsVisible: Bool = false
//    @State var buttIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("Greetings from the meme lord")
                .font(.headline)
                .fontWeight(.semibold)
                .italic()
                .foregroundColor(Color.blue)
            Button(action: {
                print("Hit-Me button pressed")
                //self refers to ContentView
                self.alertIsVisible = true
            }) {
                Text("Hit Me!")
                    .font(.callout)
                    .bold()
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                //()->Alert: takes no parameters and turns into an Alert object
                //define what the alert is going to be
                return Alert(title: Text("Do The Fortnite Dance"), message: Text("this is my first pop-up"), dismissButton: .default(Text("Awesome!")))
                
            }
    
//            Button(action: {
//                print("Knock-knock button presed")
//                self.buttIsVisible = true
//            }) {
//                Text("Knock Knock!")
//                .font(.call out)
//                .bold()
//                .foregroundColor(Color.purple)
//            }
//            .alert(isPresented: $buttIsVisible) { () -> Alert in
//                return Alert(title: Text("Who is there?"), message: Text("Your mom"), primaryButton: Alert.Button.default(Text("Die slowly")), secondaryButton: Alert.Button.default(Text("Die quickly")))
//            }
//            .frame(width: 200, height: 200)
        }
            
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
