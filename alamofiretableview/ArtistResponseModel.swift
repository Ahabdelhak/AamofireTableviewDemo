//
//  ArtistResponseModel.swift
//  alamofiretableview
//
//  Created by Ahmed Sabry on 23/09/2021.
//

import Foundation

class ArtistResponseModel:Decodable{
    public var resultCount:Int?
    public var results:[Results]?
}
  
class Results : Decodable{
    public var wrapperType : String?
    public var kind : String?
    public var artistId : Int?
    public var collectionId : Int?
    public var trackId : Int?
    public var artistName : String?
    public var collectionName : String?
    public var trackName : String?
    public var collectionCensoredName : String?
    public var trackCensoredName : String?
    public var artistViewUrl : String?
    public var collectionViewUrl : String?
    public var trackViewUrl : String?
    public var previewUrl : String?
    public var artworkUrl30 : String?
    public var artworkUrl60 : String?
    public var artworkUrl100 : String?
    public var collectionPrice : Double?
    public var trackPrice : Double?
    public var releaseDate : String?
    public var collectionExplicitness : String?
    public var trackExplicitness : String?
    public var discCount : Int?
    public var discNumber : Int?
    public var trackCount : Int?
    public var trackNumber : Int?
    public var trackTimeMillis : Int?
    public var country : String?
    public var currency : String?
    public var primaryGenreName : String?
    public var isStreamable : Bool?
}
