//
//  ContentView.swift
//  Rock Paper Scissors SwiftUI
//
//  Created by Cameron Buckley on 2/9/20.
//  Copyright © 2020 Cameron Buckley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var winText = "   "
    @State private var youText = "   "
    @State private var theyText = "   "
    var body: some View {
        VStack {
            Text("Rock Paper Scissors")
            HStack {
                Button(action: {
                    self.playGame(pSelection: 1)
                    self.youText = "You Picked Rock"
                }) {
                    Text("Rock")
                }
                Button(action: {
                    self.playGame(pSelection: 2)
                    self.youText = "You picked Paper"
                }) {
                    Text("Paper")
                }
                Button(action: {
                    self.playGame(pSelection: 3)
                    self.youText = "You Picked Scissors"
                }) {
                    Text("Scissors")
                }
            }
            Text(youText)
            Text(theyText)
            Text(winText)
        }
    }
    
    func playGame(pSelection : Int){
        let eSelection = Int.random(in: 1...3)
            switch eSelection {
            case 1 : theyText = "They Picked Rock"
            case 2 : theyText = "They Picked Paper"
            case 3 : theyText = "They Picked Scissors"
            default : theyText = "Something Broke"
            }
        if eSelection == pSelection {
            winText = "You TIED"
        } else {
            if pSelection == 1 {
                switch eSelection{
                case 2 : winText = "You LOST"
                case 3 : winText = "You WON"
                default : winText = "Someting's Wrong"
                }
            }
            if pSelection == 2 {
                switch eSelection{
                case 1 : winText = "You WON"
                case 3 : winText = "You LOST"
                default : winText = "Someting's Wrong"
                }
            }
            if pSelection == 3 {
                switch eSelection{
                case 1 : winText = "You LOST"
                case 2 : winText = "You WON"
                default : winText = "Someting's Wrong"
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
