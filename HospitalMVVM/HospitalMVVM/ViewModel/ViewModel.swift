//
//  ViewModel.swift
//  HospitalMVVM
//
//  Created by Caio Fabrini on 26/10/23.
//

import UIKit

class ViewModel {
    
    // O private(set) você consegue ACESSAR OS SEUS VALORES porem, não consegue ALTERAR SEUS VALORES FORA DA CLASSE
     private(set) var procedureAuthorization: ProcedureAuthorization = ProcedureAuthorization(banner: Banner(title: "Teste Banner 2",
                                                                                               description: "Teste descrição Banner"),
                                                                                idCard: IdCard(name: "Caio Teste",
                                                                                               id: "2324234324"))
    
//    func getBanner() -> Banner {
//        return procedureAuthorization.banner
//    }
    
//    var getBanner: Banner {
//        return procedureAuthorization.banner
//    }
    
//    func getIdCard() -> IdCard {
//        return procedureAuthorization.idCard
//    }
    
//    var getIdCard: IdCard {
//        return procedureAuthorization.idCard
//    }

}
