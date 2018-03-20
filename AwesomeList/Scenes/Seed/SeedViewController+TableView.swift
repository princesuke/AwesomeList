//
//  SeedViewController+TableView.swift
//  AwesomeList
//
//  Created by Worawit Nawaritloha on 21/3/61.
//  Copyright © พ.ศ. 2561 prince. All rights reserved.
//

import UIKit

extension SeedViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return seeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let seed = seeds[indexPath.row]
        var cell = tableView.dequeueReusableCell(withIdentifier: seed.type)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "track")
        }
        
        switch seed.type {
        case SeedType.track:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: seed.type) as! TrackTableViewCell
            cell.coverImageView.sd_setImage(with: URL(string: seed.cover), placeholderImage: UIImage(named: "Placeholder"))
            cell.nameLabel.text = seed.name
            return cell
            
        case SeedType.video:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: seed.type) as! VideoTableViewCell
            cell.coverImageView.sd_setImage(with: URL(string: seed.cover), placeholderImage: UIImage(named: "Placeholder"))
            cell.nameLabel.text = seed.name
            return cell
            
        case SeedType.ads:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: seed.type) as! AdsTableViewCell
            cell.coverImageView.sd_setImage(with: URL(string: seed.cover), placeholderImage: UIImage(named: "Placeholder"))
            cell.nameLabel.text = seed.name
            return cell
            
        default:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: seed.type) as! TrackTableViewCell
            cell.coverImageView.sd_setImage(with: URL(string: seed.cover), placeholderImage: UIImage(named: "Placeholder"))
            cell.nameLabel.text = seed.name
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let seed = seeds[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: seed.type)
        return (cell?.bounds.size.height)!
    }
    
}
