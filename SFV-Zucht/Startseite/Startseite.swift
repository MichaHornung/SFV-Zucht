//
//  Startseite.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 17.01.23.
//

import SwiftUI

struct ContenView: View {
    
    var body: some View {
        TabView {
            Image("christophPiecha")
            Image("dennisLeonhart")
            Image("norbertKitt")
        }
        .tabViewStyle(.page)
    }
}
