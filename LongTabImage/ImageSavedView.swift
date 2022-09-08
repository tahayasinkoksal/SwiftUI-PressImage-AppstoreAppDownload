//
//  ImageSavedView.swift
//  LongTabImage
//
//  Created by Taha Yasin Köksal on 8.09.2022.
//

import SwiftUI

struct ImageSavedView: View {
    var body: some View {
        VStack{
            Text("Image Save")
                .font(.title)
                .padding(.bottom, 50)
            
            
            Image("resim")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.31)
                .contextMenu{
                    Button {
                        //
                        UIImageWriteToSavedPhotosAlbum(UIImage(named: "resim")!, nil, nil, nil)
                        
                     
                    }
                label: {
                        VStack{
                            
                            Text("Save Image")
                        }
                        
                }

                }
        }    }
}

struct ImageSavedView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSavedView()
    }
}
