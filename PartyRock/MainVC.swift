//
//  ViewController.swift
//  PartyRock
//
//  Created by Macbook Air on 5/2/17.
//  Copyright © 2017 David Ramirez. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/wyx6JDQCslE/maxresdefault.jpg", videoURL: "<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/wyx6JDQCslE?rel=0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Sexy and I Know It")
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/XNtTEibFvlQ/maxresdefault.jpg", videoURL: "<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/XNtTEibFvlQ?rel=0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Shots")
        
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/KQ6zr6kCPj8/maxresdefault.jpg", videoURL: "<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8?rel=0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock Anthem")
        
        
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/SkTt9k4Y-a8/maxresdefault.jpg", videoURL: "<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8?rel=0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Sorry for Party Rocking")
        
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/pnlo531zWSs/maxresdefault.jpg", videoURL: "<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/UA8rcLvS1BY?rel=0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Champagne Showers")
        
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)

        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath ) as? PartyCell{
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }


}

