// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetPostQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetPost($id: ID!) {
      post(id: $id) {
        __typename
        id
        title
        body
      }
    }
    """

  public let operationName: String = "GetPost"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("post", arguments: ["id": GraphQLVariable("id")], type: .object(Post.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(post: Post? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "post": post.flatMap { (value: Post) -> ResultMap in value.resultMap }])
    }

    public var post: Post? {
      get {
        return (resultMap["post"] as? ResultMap).flatMap { Post(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "post")
      }
    }

    public struct Post: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Post"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("body", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, title: String? = nil, body: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Post", "id": id, "title": title, "body": body])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var body: String? {
        get {
          return resultMap["body"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "body")
        }
      }
    }
  }
}

public final class GetPostsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetPosts {
      posts {
        __typename
        data {
          __typename
          id
          title
        }
      }
    }
    """

  public let operationName: String = "GetPosts"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("posts", type: .object(Post.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(posts: Post? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "posts": posts.flatMap { (value: Post) -> ResultMap in value.resultMap }])
    }

    public var posts: Post? {
      get {
        return (resultMap["posts"] as? ResultMap).flatMap { Post(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "posts")
      }
    }

    public struct Post: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PostsPage"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("data", type: .list(.object(Datum.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(data: [Datum?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "PostsPage", "data": data.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var data: [Datum?]? {
        get {
          return (resultMap["data"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Datum?] in value.map { (value: ResultMap?) -> Datum? in value.flatMap { (value: ResultMap) -> Datum in Datum(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }, forKey: "data")
        }
      }

      public struct Datum: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Post"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("title", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, title: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Post", "id": id, "title": title])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }
      }
    }
  }
}
