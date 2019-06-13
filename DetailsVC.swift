//
//  detailsVC.swift
//  Jobs
//
//  Created by Yasmin Ayman on 10/10/1440 AH.
//  Copyright © 1440 yasmin.ayman. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    var job : Job?

    @IBOutlet weak var tf_company: UILabel!
    @IBOutlet weak var tf_date: UILabel!
    @IBOutlet weak var tf_name: UILabel!
    @IBOutlet weak var tf_icon: UILabel!
    var jobsTableView : JobsTableVC?

    override func viewDidLoad() {
        super.viewDidLoad()

        tf_company.text = job?.companyName ?? "default"
        tf_date.text = job?.creationDate ?? "default"
        tf_icon.text = job?.icon ?? "default"
        tf_name.text = job?.name ?? "default"
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
