const { ApolloServer, gql } = require('apollo-server');
const { buildFederatedSchema } = require('@apollo/federation');

const typeDefs = gql`
  type Query {
    serviceBData: String
  }
`;

const resolvers = {
  Query: {
    serviceBData: () => "Data from Service B",
  },
};

const server = new ApolloServer({
  schema: buildFederatedSchema([{ typeDefs, resolvers }])
});

server.listen({ port: 4002 }).then(({ url }) => {
  console.log(`Service B ready at ${url}`);
});
