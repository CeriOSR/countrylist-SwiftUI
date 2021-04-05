// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class CountryListQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query CountryList {
      countries {
        __typename
        code
        name
        native
        capital
        emoji
        currency
        languages {
          __typename
          code
          name
        }
        phone
        emojiU
        states {
          __typename
          name
        }
        continent {
          __typename
          code
          name
        }
      }
    }
    """

  public let operationName: String = "CountryList"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("countries", type: .nonNull(.list(.nonNull(.object(Country.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(countries: [Country]) {
      self.init(unsafeResultMap: ["__typename": "Query", "countries": countries.map { (value: Country) -> ResultMap in value.resultMap }])
    }

    public var countries: [Country] {
      get {
        return (resultMap["countries"] as! [ResultMap]).map { (value: ResultMap) -> Country in Country(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Country) -> ResultMap in value.resultMap }, forKey: "countries")
      }
    }

    public struct Country: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Country"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("code", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("native", type: .nonNull(.scalar(String.self))),
          GraphQLField("capital", type: .scalar(String.self)),
          GraphQLField("emoji", type: .nonNull(.scalar(String.self))),
          GraphQLField("currency", type: .scalar(String.self)),
          GraphQLField("languages", type: .nonNull(.list(.nonNull(.object(Language.selections))))),
          GraphQLField("phone", type: .nonNull(.scalar(String.self))),
          GraphQLField("emojiU", type: .nonNull(.scalar(String.self))),
          GraphQLField("states", type: .nonNull(.list(.nonNull(.object(State.selections))))),
          GraphQLField("continent", type: .nonNull(.object(Continent.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(code: GraphQLID, name: String, native: String, capital: String? = nil, emoji: String, currency: String? = nil, languages: [Language], phone: String, emojiU: String, states: [State], continent: Continent) {
        self.init(unsafeResultMap: ["__typename": "Country", "code": code, "name": name, "native": native, "capital": capital, "emoji": emoji, "currency": currency, "languages": languages.map { (value: Language) -> ResultMap in value.resultMap }, "phone": phone, "emojiU": emojiU, "states": states.map { (value: State) -> ResultMap in value.resultMap }, "continent": continent.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var code: GraphQLID {
        get {
          return resultMap["code"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "code")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var native: String {
        get {
          return resultMap["native"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "native")
        }
      }

      public var capital: String? {
        get {
          return resultMap["capital"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "capital")
        }
      }

      public var emoji: String {
        get {
          return resultMap["emoji"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "emoji")
        }
      }

      public var currency: String? {
        get {
          return resultMap["currency"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "currency")
        }
      }

      public var languages: [Language] {
        get {
          return (resultMap["languages"] as! [ResultMap]).map { (value: ResultMap) -> Language in Language(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Language) -> ResultMap in value.resultMap }, forKey: "languages")
        }
      }

      public var phone: String {
        get {
          return resultMap["phone"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      public var emojiU: String {
        get {
          return resultMap["emojiU"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "emojiU")
        }
      }

      public var states: [State] {
        get {
          return (resultMap["states"] as! [ResultMap]).map { (value: ResultMap) -> State in State(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: State) -> ResultMap in value.resultMap }, forKey: "states")
        }
      }

      public var continent: Continent {
        get {
          return Continent(unsafeResultMap: resultMap["continent"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "continent")
        }
      }

      public struct Language: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Language"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("code", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(code: GraphQLID, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Language", "code": code, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var code: GraphQLID {
          get {
            return resultMap["code"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "code")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct State: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["State"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "State", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Continent: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Continent"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("code", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(code: GraphQLID, name: String) {
          self.init(unsafeResultMap: ["__typename": "Continent", "code": code, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var code: GraphQLID {
          get {
            return resultMap["code"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "code")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}
