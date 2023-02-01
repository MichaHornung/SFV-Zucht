//
//  APIJson.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 01.02.23.
//

import Foundation

// MARK: - WelcomeElement
struct FishElement: Codable {
    let id: Int
    let name: String
    let url: String
    let imgSrcSet: ImgSrcSetUnion
    let meta: Meta

    enum CodingKeys: String, CodingKey {
        case id, name, url
        case imgSrcSet = "img_src_set"
        case meta
    }
}

enum ImgSrcSetUnion: Codable {
    case enumeration(ImgSrcSetEnum)
    case imgSrcSetClass(ImgSrcSetClass)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(ImgSrcSetEnum.self) {
            self = .enumeration(x)
            return
        }
        if let x = try? container.decode(ImgSrcSetClass.self) {
            self = .imgSrcSetClass(x)
            return
        }
        throw DecodingError.typeMismatch(ImgSrcSetUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for ImgSrcSetUnion"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .enumeration(let x):
            try container.encode(x)
        case .imgSrcSetClass(let x):
            try container.encode(x)
        }
    }
}

// MARK: - ImgSrcSetClass
struct ImgSrcSetClass: Codable {
    let the15X: String
    let the2X: String?

    enum CodingKeys: String, CodingKey {
        case the15X = "1.5x"
        case the2X = "2x"
    }
}

enum ImgSrcSetEnum: String, Codable {
    case notAvailable = "Not available"
}

// MARK: - Meta
struct Meta: Codable {
    let conservationStatus: String?
    let scientificClassification: ScientificClassificationUnion?
    let binomialName, typeSpecies, synonyms, subfamiliesGenera: String?
    let genera, families, subfamily, subfamilies: String?
    let species: String?

    enum CodingKeys: String, CodingKey {
        case conservationStatus = "conservation_status"
        case scientificClassification = "scientific_classification"
        case binomialName = "binomial_name"
        case typeSpecies = "type_species"
        case synonyms
        case subfamiliesGenera = "subfamilies_&_genera"
        case genera, families, subfamily, subfamilies, species
    }
}

enum ScientificClassificationUnion: Codable {
    case scientificClassificationClass(ScientificClassificationClass)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        if let x = try? container.decode(ScientificClassificationClass.self) {
            self = .scientificClassificationClass(x)
            return
        }
        throw DecodingError.typeMismatch(ScientificClassificationUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for ScientificClassificationUnion"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .scientificClassificationClass(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - ScientificClassificationClass
struct ScientificClassificationClass: Codable {
    let kingdom: Kingdom
    let phylum: Phylum
    let scientificClassificationClass: Class?
    let order, family, genus, species: String?
    let superfamily, subgenus, suborder, clade: String?
    let unranked: Unranked?
    let subfamily, subclass, infraclass: String?
    let superorder: Superorder?
    let tribe, infraphylum, superclass: String?

    enum CodingKeys: String, CodingKey {
        case kingdom, phylum
        case scientificClassificationClass = "class"
        case order, family, genus, species, superfamily, subgenus, suborder, clade
        case unranked = "(unranked)"
        case subfamily, subclass, infraclass, superorder, tribe, infraphylum, superclass
    }
}

enum Kingdom: String, Codable {
    case animalia = "animalia"
}

enum Phylum: String, Codable {
    case chordata = "chordata"
}

enum Class: String, Codable {
    case actinopterygii = "actinopterygii"
    case chondrichthyes = "chondrichthyes"
    case hyperoartia = "hyperoartia"
    case myxini = "myxini"
}

enum Superorder: String, Codable {
    case acanthopterygii = "acanthopterygii"
    case alepocephali = "alepocephali"
    case batoidea = "batoidea"
    case elopomorpha = "elopomorpha"
    case lepidogalaxii = "lepidogalaxii"
    case paracanthopterygii = "paracanthopterygii"
    case selachimorpha = "selachimorpha"
}

enum Unranked: String, Codable {
    case atherinomorpha = "atherinomorpha"
    case otophysi = "otophysi"
    case ovalentaria = "ovalentaria"
}

typealias Fish = [FishElement]
