const { gql } = require('apollo-server');

const typeDefs = gql`
  type Query {
    serviceBData: String
  }
`;

module.exports = typeDefs;
