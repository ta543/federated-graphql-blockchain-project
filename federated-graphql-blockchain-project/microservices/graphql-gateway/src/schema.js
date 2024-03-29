const { gql } = require('apollo-server');

const typeDefs = gql`
  type Query {
    hello: String
  }

  type Mutation {
    updateMessage(message: String!): String
  }
`;

module.exports = typeDefs;
