//
//  ViewController.swift
//  searchBar
//
//  Created by user on 24/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    let searchBar = UISearchBar()
    let search = UISearchController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.searchController = search
        search.searchResultsUpdater = self
//        configureUI()
    }
    
    //    override var preferredStatusBarStyle: UIStatusBarStyle {
    //        return .lightContent
    //    }
    
    @objc func handleShowSearchBar() {
        search(shouldShow: true)
        searchBar.becomeFirstResponder()
    }
    
    func configureUI(){
//        view.backgroundColor = .white
//
//        searchBar.sizeToFit()
//        searchBar.delegate = self
//
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationItem.title = "Search Bar"
//        navigationController?.navigationBar.backgroundColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
//
//        navigationController?.navigationBar.isTranslucent = false
//        navigationController?.navigationBar.barStyle = .black
//        navigationController?.navigationBar.tintColor = .white
//        showSearchBarButton(shouldShow: true)
    }
    
    func showSearchBarButton(shouldShow: Bool) {
        if(shouldShow) {
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleShowSearchBar))
        }else {
            navigationItem.rightBarButtonItem = nil
        }
        
    }
    
    func search(shouldShow: Bool) {
        showSearchBarButton(shouldShow: !shouldShow)
        searchBar.showsCancelButton = shouldShow
        navigationItem.titleView = shouldShow ? searchBar : nil
    }
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print("update")
        search.view.backgroundColor = .red
    }
}

//extension ViewController: UISearchBarDelegate {
//
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        search(shouldShow: false)
//    }
//
//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
//        print("begin")
//    }
//
//    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
//        print("end")
//    }
//
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        print("Search text is \(searchText)")
//    }
//
//}


//Posso utilizar o navigationItem.title simultâneo com navigationItem.titleView
