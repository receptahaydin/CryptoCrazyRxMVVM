//
//  CryptoViewModel.swift
//  CryptoCrazyRxMVVM
//
//  Created by Recep Taha Aydın on 9.09.2024.
//

import Foundation

class CryptoViewModel {
    func requestData() {
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!
        WebService().downloadCurrencies(url: url) { result in
            switch result {
            case .success(let cryptos):
                print(cryptos)
            case .failure(let error):
                print(error)
            }
        }
    }
}
