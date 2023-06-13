//
//  ViewController.swift
//  club
//
//  Created by Harsh Tiwari on 13/06/23.
//

import UIKit

class ClubListViewController: UIViewController {
    
    private let pics = [
        UIImage(named: "club_3-removebg-preview 1"),
        UIImage(named: "club-removebg-preview (3) 1"),
        UIImage(named: "club4-removebg-preview 1")
    ]
    private let clubListArray = [
        "The Camellias Club",
        "The Magnolias Club",
        "Club 5 DLF City"
    ]

    @IBOutlet weak var clubListTableView: UITableView!
    @IBOutlet weak var clubLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        clubListTableView.delegate = self
        clubListTableView.dataSource = self
        
        clubListTableView.separatorStyle = .none
        
        self.clubListTableView.register(UINib(nibName: "ClubListTableViewCell", bundle: nil), forCellReuseIdentifier: "clubListCell")
        
    }


}
extension ClubListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

extension ClubListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clubListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = clubListTableView.dequeueReusableCell(withIdentifier: "clubListCell", for: indexPath) as! ClubListTableViewCell
        cell.selectionStyle = .none
        
        
        cell.cellImage.image = pics[indexPath.row]
        cell.nameOfClub.text = clubListArray[indexPath.row]
        return cell
    }
    
    
}
