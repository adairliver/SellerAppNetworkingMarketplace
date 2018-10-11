//
//  ResponseInvoiceRequest.swift
//  SellerAppNetworkingMarketplace
//
//  Created by Stephane Gardon on 03/09/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ResponseInvoiceRequest:Mappable{
    
    public var successMsg   :String?
    public var status : InvoiceRequestStatus?
    public var errorDescription : String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        successMsg <- map["successMsg"]
        status <- map["status"]
        errorDescription = status == nil ? nil : status?.errorDescription
    }
}

public class InvoiceRequestStatus:Mappable{
    
    public var errorDescription : String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        errorDescription <- map["detailedErrorDescription"]
    }
}



/*{
 "s": "1"
 "errorMessages": [
 {
 "trackingNumber": "este campo Numero de pedido es obligatorio"
 },
 {
 "rfc1": "este campo RFC es obligatorio"
 },
 {
 "usoCFDI": "este campo Uso CFDI es obligatorio"
 },
 {
 "emailId": "este campo correo electronico es obligatorio"
 }
 ]
 }*/

