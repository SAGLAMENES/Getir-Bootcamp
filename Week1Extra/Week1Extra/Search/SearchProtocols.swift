//
//  SearchProtocols.swift
//  Week1Extra
//
//  Created by Enes Saglam on 21.03.2024.
//

import Foundation

protocol SearchViewModelProtocols: AnyObject {
    var delegate: SearchViewModelDelegate? { get set }
    func searchButtonTapped()
    func searchBarTextDidChange()
}

protocol SearchViewModelDelegate{
    func updateView()
}
