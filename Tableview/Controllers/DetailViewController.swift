//
//  DetailViewController.swift
//  Tableview
//
//  Created by 박다미 on 2022/12/23.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //전화면에서 Movie데이터를 전달 받기 위한 함수
    var movieData:Movie?
    
    
    
    override func viewDidLoad() {
       setupUI()
        super.viewDidLoad()

    }
    func setupUI(){
        mainImageView.image = movieData?.movieImage
        movieNameLabel.text = movieData?.movieName
        descriptionLabel.text = movieData?.movieDescription
        self.descriptionLabel.numberOfLines  = 0
    }
    

 

}
