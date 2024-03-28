//
//  RemoteImage.swift
//  Novies
//
//  Created by יואב אליאב on 10/03/2024.
//

import Foundation
import SwiftUI





final class ImageLoader : ObservableObject {
    
   @Published var image : Image? = nil
    
    // to download the image
    func load(fromUrlString : String){
        NetworkManager.shared.downloadImage(fromUrlString: fromUrlString){
            uiImage in
            
            guard let uiImage = uiImage else {return}
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
            
            
        }
    }
    
}


struct RemoteImage : View {
    
    var image : Image?

    var body: some View {
        image?.resizable() ?? Image("notFoundImage").resizable()
    }
}


struct MovieRemoteImage : View {
    
    @StateObject var imageLoader = ImageLoader()
    let urlString : String
    
    var body: some View {
        
        if let value = NetworkManager.shared.cache.object(forKey: NSString(string: urlString)){
            RemoteImage(image: Image(uiImage:value))
        }
        else{
            RemoteImage(image: imageLoader.image)
                .onAppear(){
                    imageLoader.load(fromUrlString: urlString)
                }
        }
    }
}
