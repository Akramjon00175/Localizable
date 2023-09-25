//
//  HomePage.swift
//  Localizable
//
//  Created by Akramjon on 25/09/23.
//

import SwiftUI

struct HomePage: View {
    
    @EnvironmentObject var settings : UserSettings
    
    var body: some View {
        
        NavigationStack{
            VStack {
                VStack {
                    TextField("Your name :", text: $settings.name)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(25)
                    SecureField("Your password :", text: $settings.password)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(25)
                    
                   
                    NavigationLink(destination: SecondScreen_T_2(), label: {
                        Text("Show")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(25)
                })
                    }
                    
                }.padding(.horizontal)
            
            
            .navigationTitle("EnviromentObject")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
