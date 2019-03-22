//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Matvey on 3/21/19.
//  Copyright © 2019 Matvey. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        get {

            // MEAL
//            var name: String
//            var food: [Food]
            
            // FOOD
//            var name: String
//            var description: String
            let breakfast = Meal(name: "healthy", food: [
                Food(name: "smoothie", description: "mango, pineapple, spinach blended together"),
                Food(name: "blueberries", description: "just a bunch of berries"),
                Food(name: "air", description: "can't survive without it")
                ])
            
            let lunch = Meal(name: "filling", food: [
                Food(name: "meat cutlets", description: "Russian beef dish"),
                Food(name: "buckweat", description: "delicious grain, if cooked right"),
                Food(name: "bread", description: "no meal is complete without it")
                ])
            
            let dinner = Meal(name: "american", food: [
                Food(name: "steak", description: "medium-rare, please"),
                Food(name: "potatoes", description: "a good side dish"),
                Food(name: "wine", description: "supposedly good for you in small amounts")
                ])
            
            return [breakfast, lunch, dinner]
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        let meal = meals[indexPath.section]
        
        cell.textLabel?.text = meal.food[indexPath.row].name
        cell.detailTextLabel?.text = meal.food[indexPath.row].description


        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return meals[section].name
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
