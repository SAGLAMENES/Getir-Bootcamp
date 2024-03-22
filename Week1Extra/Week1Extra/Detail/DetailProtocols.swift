//
//  DetailProtocols.swift
//  Week1Extra
//
//  Created by Enes Saglam on 21.03.2024.
//

import Foundation

protocol DetailViewModelProtocol {
    var delegate: DetailViewModelDelegate? { get set }
    func load()
    func selectedWord()
}
