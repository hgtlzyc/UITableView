//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by lijia xu on 7/15/21.
//

import UIKit

class PlanetListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(PlanetListTopHeader.self, forHeaderFooterViewReuseIdentifier: "planetListHeader")
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
     
    }

    // MARK: - Header View
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        switch section {
        case 0:
            guard let topHeaderView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "planetListHeader") as? PlanetListTopHeader else {return nil}
            topHeaderView.image.image = UIImage(named: "solarSystem")
            
            return topHeaderView

        default:
            return nil

        }
    }
    
    
    
    // MARK: - Rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.planets.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        
        let planet = PlanetController.planets[indexPath.row]
        let planetImageName = planet.planetImageName
        
        cell.imageView?.image = UIImage(named: planetImageName)
        cell.textLabel?.text = planet.planetName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlanetDetails" {
            guard let selectedIndexPath = tableView.indexPathForSelectedRow, let destination = segue.destination as? PlanetDetailViewController else { return}
            
            let planetToSend = PlanetController.planets[selectedIndexPath.row]
            destination.planet = planetToSend
        }
    }
    

}
