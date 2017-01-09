//
//  NotesTableTableViewController.swift
//  Notes
//
//  Created by Nicholas Drazenovic on 1/8/17.
//  Copyright © 2017 NDraz. All rights reserved.
//

import UIKit

class NotesTableTableViewController: UITableViewController {

    let NotesList: [Note] = [Note(title: "Note 1", content: "Testing 1"), Note(title: "Note 2", content: "Testing 2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
    }

    override func prepare( for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowNoteDetailSegue" {
            //Note that, originally, destinationViewController is of Type UIViewController and has to be casted as myViewController instead since that's the ViewController we trying to go to.
            //if let destinationVC:ViewController = segue.destination as? ViewController
            if let destinationVC: UINavigationController = segue.destination as? UINavigationController
            {
            
                let VC: ViewController = destinationVC.topViewController as! ViewController
                
                if let indexPath = self.tableView.indexPathForSelectedRow {
                
                    let selectedRow = NotesList[indexPath.row]
                
                    VC.content = selectedRow.Content
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return NotesList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = NotesList[indexPath.row].Title
        cell.detailTextLabel?.text = NotesList[indexPath.row].LastchangedDisplay
        return cell
    }
    



}
