//
//  MovieDetailsViewController.swift
//  flix
//
//  Created by Kartikey Sharan on 19/09/21.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdrop: UIImageView!
    @IBOutlet weak var posterview: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var synopsislabel: UILabel!
    var movie: [String: Any]!
    override func viewDidLoad() {
        super.viewDidLoad()

        titlelabel.text = movie["title"] as? String
        titlelabel.sizeToFit()
        synopsislabel.text = movie["overview"] as? String
        synopsislabel.sizeToFit()
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterview.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdrop.af.setImage(withURL: backdropUrl!)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
