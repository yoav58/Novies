//
//  AppDesign.swift
//  Novies
//
//  Created by יואב אליאב on 14/03/2024.
//

import Foundation
import SwiftUI

struct AppDesign{
    
    
    //MARK: -General design
    static var noviesSymbol = "NoviesSymbol"
    static var toolBarColor = Color.primary
    static var noviesSlogen = "From Novies To Movie Expert"
    
    
    //MARK: - tab desing
    
    // home tab
    static var homeViewText = "Home"
    static var homeViewImage = "house.fill"
    
    // must watch tab
    static var mustWatchText = "Novies Top"
    static var mustWatchImage = "text.line.first.and.arrowtriangle.forward"
    
    // watched tab
    static var watchedText = "Watched"
    static var watchedImage = "checkmark.circle.fill"
    
    //MARK: -Empty movies design
    static var emptyImage = "RacconLooking"
    static var emptyText = "Your watched list is empty.\n Start exploring and add movies you've watched"
    static var backGroundEmpty = Color.white
    
    
    //MARK: - Movie Frame design
    static var frameColor = Color(.gray)
    static var textFrameColor = Color.primary
    static var backgroundFrameColor = Color("FrameColor").opacity(0.5)
    static var watchedColor = Color("watchedColor").opacity(0.3)

    
    //MARK: - Categories
    static var CategoriesViewPicture : String = "Categories2"
    
    //MARK: - HomeView Design
    static var homeViewtitleText = "Recently Added"
    static var homeViewSmallTitleText = "Recently Added to Novies Top Movies"
    
    
    //MARK: - Watched movies design
    static var watchedTropyImage  = "WatchedTrophy"
}
