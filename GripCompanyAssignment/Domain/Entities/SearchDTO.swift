//
//  Search.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import Foundation

public struct SearchDTO: Decodable {
    public var title: String?
    public var year: String?
    public var imdbID: String?
    public var type: String?
    public var poster: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID = "imdbID"
        case type = "Type"
        case poster = "Poster"
    }
    
    init(title: String? = nil, year: String? = nil, imdbID: String? = nil, type: String? = nil, poster: String? = nil) {
        self.title = title
        self.year = year
        self.imdbID = imdbID
        self.type = type
        self.poster = poster
    }
}

struct SearchVO: Hashable, Codable {
    public var title: String?
    public var year: String?
    public var imdbID: String?
    public var type: String?
    public var poster: String?
    public var isLike: Bool = false
    
    var identifier = UUID().uuidString
    
    public static func == (lhs: SearchVO, rhs: SearchVO) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}

extension SearchDTO {
    func toDomain() -> SearchVO {
        
        let isLike = FavoritesData.instance.items.filter({ $0.imdbID == self.imdbID }).first?.isLike ?? false
        
        return SearchVO(title: self.title,
                        year: self.year,
                        imdbID: self.imdbID,
                        type: self.type,
                        poster: self.poster,
                        isLike: isLike)
    }
}
