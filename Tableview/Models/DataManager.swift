//
//  DataManager.swift
//  Tableview
//
//  Created by 박다미 on 2022/12/20.
//

import UIKit

class DataManager{
    var movieDataArray:[Movie] = []

    func makeMovieData(){
        movieDataArray = [
            
            Movie(movieImage: UIImage(named: "totoro.jpeg"), movieName: "이웃집 토토로", movieDescription: "숲속에 살고 있는 신비로운 생명체 ‘토토로’를 만나 신비한 모험이야기"),
            Movie(movieImage: UIImage(named: "bou.jpeg"), movieName: "센과 치히로의 행방불명", movieDescription: "센이 돼지로 변한 부모님을 구하고 인간세계에 돌아가기 위한 모험이야기 "),
            Movie(movieImage: UIImage(named: "ponyo.jpeg"), movieName: "벼랑위의 포뇨", movieDescription: "호기심 많은 물고기 소녀 ‘포뇨’는 따분한 바다 생활에 싫증을 느끼고 육지로 떠나 생긴 이야기"),
            Movie(movieImage: UIImage(named: "nick.jpeg"), movieName: "주토피아", movieDescription: " 교양 있고 세련된 라이프 스타일을 주도하는 도시 주토피아. 이 곳을 단숨에 혼란에 빠트린 연쇄 실종사건이 발생해서 주디와 닉이 사건해결하는 이야기"),
            Movie(movieImage: UIImage(named: "sullivan.jpeg"), movieName: "몬스터 주식회사", movieDescription: "호탕한 설리와 재치만점 마이크는 몬스터 주식회사 겁주기 팀의 최우수 콤비이야기"),
            Movie(movieImage: UIImage(named: "bob.jpeg"), movieName: "미니언즈", movieDescription: "세계 최고의 슈퍼 악당을 꿈꾸는 미니보스 ‘그루’와 그를 따라다니는 미니언들"),
            Movie(movieImage: UIImage(named: "jerry.jpeg"), movieName: "톰과 제리", movieDescription: "고양이 톰과 생쥐 제리가 쫓고 쫓기며 생기는 이야기"),
            Movie(movieImage: UIImage(named: "lava.jpeg"), movieName: "라바", movieDescription: "라바와 친구들의 좌충우돌 스토리를 담은 애니메이션"),
            Movie(movieImage: UIImage(named: "pingu.jpeg"), movieName: "핑구", movieDescription: "꼬마팽귄 핑구의 이야기 "),
            Movie(movieImage: UIImage(named: "spongebab.jpeg"), movieName: "네모네모 스폰지밥", movieDescription: "바닷속의 도시인 비키니 시티에서 벌어지는 이야기를 다룬 시트콤 형식의 코미디 애니메이션")
        ]
    }
    func getMovieData()->[Movie ]{
        return movieDataArray
    }


}

