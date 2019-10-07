//
//  ViewController.swift
//  rush00
//
//  Created by Rene Ramirez on 10/5/19.
//  Copyright © 2019 SwiftPiscine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar:UISearchBar!
    @IBOutlet weak var tblView: UITableView!
    
    let movieName = ["joker", "snatch", "kung fu hustle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getData() {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/550?api_key=a6df66754765aab6a38f08284dc49109") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, res, err) in
            if let res = res {
                print("RESULT: ")
                print(res)
            }
            
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print("DATA: ")
                    print(json)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    
    @IBAction func test_btn(_ sender: Any) {
        getData()
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = movieName[indexPath.row]
        return cell!
    }
    
}









