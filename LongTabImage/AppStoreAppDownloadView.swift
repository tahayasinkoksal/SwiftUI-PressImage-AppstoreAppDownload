//
//  AppStoreAppDownloadView.swift
//  LongTabImage
//
//  Created by Taha Yasin Köksal on 8.09.2022.
//

import SwiftUI
import StoreKit

struct AppStoreAppDownloadView: View {
    
    @State var showStore = false
    var appStoreAppID = "1531857076"
    var body: some View {
        VStack{
            Button("Click to Download App"){
                showStore.toggle()
            }
                .appStoreOverlay(isPresented: $showStore) {
                    SKOverlay.AppConfiguration(appIdentifier: appStoreAppID, position: .bottom)
                }

        }
    }
}

struct AppStoreAppDownloadView_Previews: PreviewProvider {
    static var previews: some View {
        AppStoreAppDownloadView()
    }
}
