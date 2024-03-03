//
//  NetworkManager.swift
//  Novies
//
//  Created by יואב אליאב on 04/03/2024.
//

import Foundation
import UIKit



final class NetworkManager{
    
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString,UIImage>()
    
     func getMovieDetails(title : String, apiKey: String, completed: @escaping (Result<Movie,APError>) -> Void) {
        // 1) first we create the url
        let urlString =  "https://www.omdbapi.com/?t=\(title)&apikey=\(apiKey)"
         let currectUrl = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? " "

         
        guard let url = URL(string: currectUrl) else {
            completed(.failure(APError.invalidURL))
            return
            
        }
        
        // 2) new we start the create the urlsession task
        
        let dataTask = URLSession.shared.dataTask(with: url){
            data ,response, error in
            
            // 3) check the requast successed
            if error != nil {
                completed(.failure(APError.unableToComplete))
                return
            }
            
            guard let response =  response as?  HTTPURLResponse, response.statusCode == 200 else{
                let errorCode = (response as? HTTPURLResponse)?.statusCode ?? 0
                print("the error code is \(errorCode)")
                completed(.failure(APError.invalidRespone))
                return
            }
            
            guard let data else{
                completed(.failure(APError.invalidData))
                return
            }
            
            // now we want to decode the data 
            do{
                let decodedData = try JSONDecoder().decode(Movie.self, from: data)
                completed(.success(decodedData))
            } catch {
                completed(.failure(APError.invalidData))
            }
        }
        dataTask.resume()
    }
    
    func downloadImage(fromUrlString : String, completed: @escaping (UIImage?) -> Void){
        
        // first check if the image in cache
        let cacheKey =  NSString(string: fromUrlString)
        if let image = cache.object(forKey: cacheKey){
            completed(image)
            return
        }
        
        // if no we try to create url from the string
        guard let url = URL(string : fromUrlString) else{
            completed(nil)
            return
        }
        
        // start download the image
        let task = URLSession.shared.dataTask(with: url){
            data, response, error in
            
            // first check if there data, if so try to create UIImage from that data
            guard let data = data, let image = UIImage(data: data) else{
                completed(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }
        task.resume()

        
        
    }
    
}
