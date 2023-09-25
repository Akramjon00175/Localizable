//
//  Home.M.6.3.swift
//  Localizable
//
//  Created by Akramjon on 25/09/23.
//

import SwiftUI

struct Home_M_6_3: View {
    
    @ObservedObject var settings = UserSettings()
    
    
    var body: some View {
        
        NavigationStack {
            
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
                    
                   
                NavigationLink(destination: SecondScreen_M_6_3(settings: settings), label: {
                        Text("Show")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(25)
                })
                    }
                    
                }.padding(.horizontal)
                
                .navigationTitle("ObservedObject")
                .navigationBarTitleDisplayMode(.inline)
                
            }
            
           
    
            
        }
    }


struct Home_M_6_3_Previews: PreviewProvider {
    static var previews: some View {
        Home_M_6_3()
    }
}
