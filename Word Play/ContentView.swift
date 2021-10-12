//
//  ContentView.swift
//  Word Play
//
//  Created by KSerek on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                }
                HStack {
                    CustomTextField(placeholder: "type of bird", variable: $words.birdType)
                    CustomTextField(placeholder: "room in a house", variable: $words.houseRoom)
                }
                HStack {
                    CustomTextField(placeholder: "past tense verb", variable: $words.pastVerb)
                    CustomTextField(placeholder: "verb", variable: $words.verb)
                }
                HStack {
                    CustomTextField(placeholder: "relative's name", variable: $words.relative)
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                }
                HStack {
                    CustomTextField(placeholder: "type of liquid", variable: $words.liquid)
                    CustomTextField(placeholder: "verb ending in -ing", variable: $words.ingVerb0)
                }
                HStack {
                    CustomTextField(placeholder: "plural body part", variable: $words.pluralBodyPart)
                    CustomTextField(placeholder: "plural noun", variable: $words.pluralNoun)
                }
                HStack {
                    CustomTextField(placeholder: "verb ending in -ing", variable: $words.ingVerb1)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                }
                NavigationLink("Next", destination: StoryView(words: words))
                Spacer()
            }
            .navigationTitle("Word Play")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Words {
    var adjective0 = ""
    var adjective1 = ""
    
    var birdType = ""
    var houseRoom = ""
    
    var pastVerb = ""
    var verb = ""
    
    var relative = ""
    var noun0 = ""
    
    var liquid = ""
    var ingVerb0 = ""
    
    var pluralBodyPart = ""
    var pluralNoun = ""
    
    var ingVerb1 = ""
    var noun1 = ""
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body : some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

