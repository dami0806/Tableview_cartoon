//
//  ViewController.swift
//  Tableview
//
//  Created by 박다미 on 2022/12/19.
//

import UIKit

class ViewController: UIViewController{
   
    
    
    //var movieArray:[Movie] = []
    var movieDataManager = DataManager()
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.rowHeight = 120
        movieDataManager.makeMovieData()
       
       // movieArray = movieDataManager.getMovieData()
        
        
        // Do any additional setup after loading the view.
    }
    
   
}
extension ViewController: UITableViewDataSource{
    
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
        cell.selectionStyle = .none
        print(#function)
        return cell
    }
}

extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: indexPath)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            let detailVC = segue.destination as! DetailViewController
            let array = movieDataManager.getMovieData()
            let indexPath = sender as! IndexPath
            detailVC.movieData = array[indexPath.row]
        
        }
            
    }
    
    
    
    
}
