//
//  ViewController.swift
//  TableHM13
//
//  Created by Sergey Kykhov on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {

    let lablSectionZero = ["Авиарежим",
                           "Wi-Fi",
                           "Bluetooth",
                           "Сотовая свзяь",
                           "Режим модема",
                           "VPN"]

    let lablSectionOne = ["Уведомления",
                          "Звуки, тактильные сигналы",
                          "Не беспокоить",
                          "Экранное время"]

    let lablSectionTwo = ["Основные",
                          "Пункт управления",
                          "Экран и яркость",
                          "Экран Домой",
                          "Универсальный доступ",
                          "Обои"]
    
    let imageSectionZero = ["airplane.circle.fill",
                            "wifi.circle.fill",
                            "link.circle.fill",
                            "antenna.radiowaves.left.and.right.circle.fill",
                            "link.circle.fill",
                            "globe.americas.fill"]

    let imageSectionOne = ["bell.circle.fill",
                           "speaker.wave.2.circle.fill",
                           "moon.circle.fill",
                           "hourglass.circle.fill"]

    let imageSectionTwo = ["gearshape.circle.fill",
                           "list.bullet.circle.fill",
                           "a.circle.fill ",
                           "aircle.grid.3x3.circle.fill",
                           "person.crop.circle.fill",
                           "circle.hexagongrid.circle.fill"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 6
        } else if section == 1 {
            return 4
        }
        return 6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTest", for: indexPath)
        if indexPath.row != 0 {
            cell.accessoryType = .disclosureIndicator
        } else if indexPath.section != 0 {
            cell.accessoryType = .disclosureIndicator
        } else {
            cell.accessoryType = .none
        }
        return cell

    }

    class TableViewCell: UITableViewCell {
        override func prepareForReuse() {
            super.prepareForReuse()
            self.accessoryType = .none
        }
    }

}
