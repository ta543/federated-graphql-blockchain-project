const { gql } = require('apollo-server');

const typeDefs = gql`
  type Query {
    serviceAData: String
  }
`;

module.exports = typeDefs;
