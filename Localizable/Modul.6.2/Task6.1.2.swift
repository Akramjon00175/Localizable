//
//  Task6.1.2.swift
//  Localizable
//
//  Created by Akramjon on 23/09/23.
//

import SwiftUI

struct Task6_1_2: View {
    
    @State var welcome = "str_welcome".localized()
   
    
    
    var body: some View {
        VStack {
            VStack {
                Text(welcome)
            }.frame(maxWidth: .infinity,maxHeight: .infinity)
            
            HStack(spacing: 1) {
                VStack{
                    
                    Button(action: {
                        
                        Bundle.setLanguage(lang: "en")
                        welcome = "welcome".localized()
                        
                    }){
                       Text("English")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .background(Color.red)
                    }
                    
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                
                VStack{
                    
                    Button(action: {
                        Bundle.setLanguage(lang: "ko")
                        welcome = "str_welcome".localized()
                    }){
                       Text("Korean")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .background(Color.blue)
                    }
                    
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                
                VStack{
                    
                    Button(action: {
                        Bundle.setLanguage(lang: "zh")
                        welcome = "str_welcome".localized()
                    }){
                       Text("Chinese")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .background(Color.green)
                    }
                    
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                
            }.frame(maxWidth: .infinity,maxHeight: 70)
                
        }

    }
}

struct Task6_1_2_Previews: PreviewProvider {
    static var previews: some View {
        Task6_1_2()
    }
}
