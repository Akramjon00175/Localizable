//
//  SecondScreen.M.6.3.swift
//  Localizable
//
//  Created by Akramjon on 25/09/23.
//

import SwiftUI

struct SecondScreen_M_6_3: View {
    
    @ObservedObject var settings : UserSettings
    
    var body: some View {
        VStack(alignment: .leading){
            Text("User ID : \(settings.name)")
            Text("User PW : \(settings.password)")
        }
    }
}

struct SecondScreen_M_6_3_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen_M_6_3(settings: UserSettings())
    }
}
