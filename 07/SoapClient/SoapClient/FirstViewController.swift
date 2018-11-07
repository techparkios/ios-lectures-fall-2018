//
//  FirstViewController.swift
//  SoapClient
//
//  Created by Gennady Evstratov on 2/21/18.
//  Copyright © 2018 TechPark. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    private var data: [Show] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let session = URLSession.shared
        let task = session.dataTask(with: URL(string: "https://api.soap4.me/v2/soap/")!) { (data, response, error) in
            guard let data = data else {
                print("no data, error: \(error?.localizedDescription ?? "unknown error")")

                return
            }

            let decoder = JSONDecoder()
            guard let shows: [Show] = try? decoder.decode([Show].self, from: data) else {
                print("error")

                return
            }

            DispatchQueue.main.async { [weak self] in
                self?.data = shows
                self?.tableView.reloadData()
            }

        }

        task.resume()

        print(self.data)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "CELL")
        cell.textLabel?.text = data[indexPath.row].title

        return cell
    }
}

