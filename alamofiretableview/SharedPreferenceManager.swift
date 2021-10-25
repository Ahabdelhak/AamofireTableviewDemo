//
//  SharedPreferenceManager.swift
//  alamofiretableview
//
//  Created by Ahmed Abdelhak on 25/10/2021.
//

import UIKit

class SharedPreferenceManager: NSObject {
    class var sharedIntance : SharedPreferenceManager {
        struct Static {
            static let instance = SharedPreferenceManager()
        }
        return Static.instance
    }
      
    let sharedPreference = UserDefaults.standard
      
    //MARK:- clear all Data.
    func clearAllPreference() {
        if let bundle = Bundle.main.bundleIdentifier {
            sharedPreference.removePersistentDomain(forName: bundle)
        }
    }
      
    //MARK:- setter methods.
       func saveUserToken (_ userToken : String) {
        sharedPreference.set(userToken, forKey: "userToken")
    }
      
      
    
      
    //MARK:- getter Methods.
      
    func getUserToken() -> String? {
        return sharedPreference.value(forKey: "userToken") as? String
    }
}
