//
//  ViewController.swift
//  Tableview
//
//  Created by 박다미 on 2022/12/19.
//

import UIKit

class ViewController: UIViewController{
   
    
    
    //var movieArray:[Movie] = []
    // MVC패턴을 위한 데이터 매니저 (배열 관리 - 데이터)
    var movieDataManager = DataManager()
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // 델리게이트 패턴의 대리자 설정
        tableview.delegate = self
        tableview.dataSource = self
        // 셀의 높이 설정
        tableview.rowHeight = 120
        
        // 일반적으로는 서버에 요청
        movieDataManager.makeMovieData()
       
       // movieArray = movieDataManager.getMovieData()
        // Do any additional setup after loading the view.
    }
    
   
}
extension ViewController: UITableViewDataSource{
    // 1) 테이블뷰에 몇개의 데이터를 표시할 것인지(셀이 몇개인지)를 뷰컨트롤러에게 물어봄
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return movieDataManager.getMovieData().count
       
    }
    // 2) 셀의 구성(셀에 표시하고자 하는 데이터 표시)을 뷰컨트롤러에게 물어봄
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // (힙에 올라간)재사용 가능한 셀을 꺼내서 사용하는 메서드 (애플이 미리 잘 만들어 놓음)
        // (사전에 셀을 등록하는 과정이 내부 메커니즘에 존재)
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
    // 셀이 선택이 되었을때 어떤 동작을 할 것인지 뷰컨트롤러에게 물어봄
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 세그웨이를 실행
        performSegue(withIdentifier: "toDetail", sender: indexPath)
        
    }
    // prepare세그웨이(데이터 전달)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            let detailVC = segue.destination as! DetailViewController
            let array = movieDataManager.getMovieData()
            let indexPath = sender as! IndexPath
            // 배열에서 아이템을 꺼내서, 다음화면으로 전달
            detailVC.movieData = array[indexPath.row]
        
        }
            
    }
    
    
    
    
}
