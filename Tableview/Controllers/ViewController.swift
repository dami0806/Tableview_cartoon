//
//  ViewController.swift
//  Tableview
//
//  Created by 박다미 on 2022/12/19.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return movieDataManager.getMovieData().count
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let array = movieDataManager.getMovieData()
        let movie = array[indexPath.row]
        cell.mainImageView.image = movie.movieImage
        cell.movieNameLabel.text = movie.movieName
        cell.desciptionLabel.text = movie.movieDescription
        print(#function)
        return cell
    }
    
    
    //var movieArray:[Movie] = []
    var movieDataManager = DataManager()
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.rowHeight = 120
        movieDataManager.makeMovieData()
       // movieArray = movieDataManager.getMovieData()
        
        
        // Do any additional setup after loading the view.
    }
    
   
}

