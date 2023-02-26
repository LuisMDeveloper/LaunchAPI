// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class LaunchListQuery: GraphQLQuery {
  public static let operationName: String = "LaunchList"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query LaunchList {
        launches {
          __typename
          launches {
            __typename
            id
            site
            mission {
              __typename
              name
            }
            rocket {
              __typename
              id
              name
              type
            }
            isBooked
          }
        }
      }
      """#
    ))

  public init() {}

  public struct Data: LaunchAPI.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ApolloAPI.ParentType { LaunchAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("launches", Launches.self),
    ] }

    public var launches: Launches { __data["launches"] }

    /// Launches
    ///
    /// Parent Type: `LaunchConnection`
    public struct Launches: LaunchAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ApolloAPI.ParentType { LaunchAPI.Objects.LaunchConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("launches", [Launch?].self),
      ] }

      public var launches: [Launch?] { __data["launches"] }

      /// Launches.Launch
      ///
      /// Parent Type: `Launch`
      public struct Launch: LaunchAPI.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ApolloAPI.ParentType { LaunchAPI.Objects.Launch }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("id", LaunchAPI.ID.self),
          .field("site", String?.self),
          .field("mission", Mission?.self),
          .field("rocket", Rocket?.self),
          .field("isBooked", Bool.self),
        ] }

        public var id: LaunchAPI.ID { __data["id"] }
        public var site: String? { __data["site"] }
        public var mission: Mission? { __data["mission"] }
        public var rocket: Rocket? { __data["rocket"] }
        public var isBooked: Bool { __data["isBooked"] }

        /// Launches.Launch.Mission
        ///
        /// Parent Type: `Mission`
        public struct Mission: LaunchAPI.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { LaunchAPI.Objects.Mission }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("name", String?.self),
          ] }

          public var name: String? { __data["name"] }
        }

        /// Launches.Launch.Rocket
        ///
        /// Parent Type: `Rocket`
        public struct Rocket: LaunchAPI.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { LaunchAPI.Objects.Rocket }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("id", LaunchAPI.ID.self),
            .field("name", String?.self),
            .field("type", String?.self),
          ] }

          public var id: LaunchAPI.ID { __data["id"] }
          public var name: String? { __data["name"] }
          public var type: String? { __data["type"] }
        }
      }
    }
  }
}
