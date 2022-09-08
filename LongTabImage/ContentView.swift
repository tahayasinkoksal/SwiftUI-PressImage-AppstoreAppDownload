//
//  ContentView.swift
//  LongTabImage
//
//  Created by Taha Yasin Köksal on 8.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedView = true
    
    var body: some View {
       
        VStack{
            Button {
                selectedView.toggle()
            } label: {
                Text("Change View")
            }.padding()
            

            
            if selectedView  {
               ImageSavedView()
            }
            else {
                AppStoreAppDownloadView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
