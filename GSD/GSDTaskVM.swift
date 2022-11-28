//
//  GSDTaskVM.swift
//  GSD
//
//  Created by Maurice G on 11/28/22.
//

import Foundation

protocol GSDTaskVM {
    var storageSevice: StorageService {get}
    func addTask(with task: GSDTask)
}

class GSDTaskVMImpl: GSDTaskVM, ObservableObject {
    var storageSevice: StorageService
    
    init(storageSevice: StorageService) {
        self.storageSevice = storageSevice
    }
    
    func addTask(with task: GSDTask) {
        
    }
    
}
