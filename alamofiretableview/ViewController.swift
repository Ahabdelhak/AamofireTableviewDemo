//
//  ViewController.swift
//  alamofiretableview
//
//  Created by Ahmed Sabry on 22/09/2021.
//

import UIKit
import Alamofire
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableviewUi: UITableView!
    var artist = Array<Results>()

    override func viewDidLoad() {
           super.viewDidLoad()
        
        loadJsonData()

        tableviewUi.delegate = self
        tableviewUi.dataSource = self
        tableviewUi.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell_ID")
        
       }
    
       func loadJsonData()
       {
        
          AF.request("https://itunes.apple.com/search?media=music&term=bollywood").responseJSON { (response) in
           
            print("Response.result.value \( response.value!)")
            
//            if let json = response.value as! [String:Any]?{
//                       if let responseValue = json["results"] as! [[String:Any]]?{
//                           self.artist = responseValue
//                           self.tableviewUi.reloadData()
//                       }
//                   }
//
            
            do{
                if(response.error == nil){
                    let result: ArtistResponseModel = try JSONDecoder().decode(ArtistResponseModel.self, from: response.data!)
                    debugPrint(result)
                    self.artist = result.results ?? []
                    self.tableviewUi.reloadData()
            }
                          
                    }catch{
                          
                    }
                    
            
       
           }
       }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell_ID") as! TableViewCell
        //cell.trackName.text = "cell number: \(indexPath.row)"
        
        if(artist.count > 0){
                 do{
                 let artistData = artist[indexPath.row]
//                 cell.trackImg.image = try UIImage(data: Data(contentsOf: URL(string: artistData["artworkUrl60"] as! String) ?? URL(string: "http://www.google.com")!))
//                    cell.trackName.text = artistData["trackName"] as? String
//                    cell.artistName.text = artistData["artistName"] as? String
                    
                    cell.trackImg.image = try UIImage(data: Data(contentsOf: URL(string: artistData.artworkUrl60!) ?? URL(string: "http://www.google.com")!))
                                   cell.trackName.text = artistData.trackName
                                   cell.artistName.text = artistData.artistName

                 }catch{
                       
                 }
                   
             }
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell number: \(indexPath.row)")

    //    secondview >> Navigate with data
//        let storybord = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storybord.instantiateViewController(identifier: "secondview") as! secondviewDetails
//        vc.name = "ahmed Amer: \(indexPath.row)"
//        vc.modalPresentationStyle = .overFullScreen //Set Present Style
//        self.present(vc, animated: true, completion: nil)
        
    }


}

