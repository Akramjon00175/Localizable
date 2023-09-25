//
//  SecondScreen.T.2.swift
//  Localizable
//
//  Created by Akramjon on 25/09/23.
//

import SwiftUI

struct SecondScreen_T_2: View {
    
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        
     
        VStack(alignment: .leading){
            Text("User ID : \(settings.name)")
            Text("User PW : \(settings.password)")
        }
    }
}

struct SecondScreen_T_2_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen_T_2()
    }
}
