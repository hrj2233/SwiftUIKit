//
//  DetailViewController.swift
//  Project1
//
//  Created by hrj on 2021/02/12.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var selectedPicturePosition = 0
    var totalNumberOfImages = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture \(selectedPicturePosition) of \(totalNumberOfImages)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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