//
//  FoodResponse.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

import Foundation

public struct FoodResponse: Decodable {
    
    public var div: String?
    
    public var id: String?
    public var title: String?
    public var description: String?
    public var price: String?
    public var reviewsCount: String?
    
    enum CodingKeys: String, CodingKey {
        case div = "div"
        case id = "id"
        case title = "title"
        case description = "description"
        case price = "price"
        case reviewsCount = "reviewsCount"
    }
    
    init(div: String? = nil, id: String? = nil, title: String? = nil, description: String? = nil, price: String? = nil, reviewsCount: String? = nil) {
        self.div = div
        self.id = id
        self.title = title
        self.description = description
        self.price = price
        self.reviewsCount = reviewsCount
    }
}

struct FoodDTO: Hashable, Codable {
    
    public var div: String?
    public var id: String?
    public var title: String?
    public var description: String?
    public var price: String?
    public var reviewsCount: String?
    
    var identifier = UUID().uuidString
    
    public static func == (lhs: FoodDTO, rhs: FoodDTO) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}

struct FoodGroup: Hashable {
    
    public var div: String?
    public var id: String?
    
    public static func == (lhs: FoodGroup, rhs: FoodGroup) -> Bool {
        return lhs.div == rhs.div
    }
}
