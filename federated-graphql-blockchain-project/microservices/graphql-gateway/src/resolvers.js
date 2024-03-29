const resolvers = {
    Query: {
      hello: () => 'Hello, GraphQL world!',
    },
    Mutation: {
      updateMessage: (_, { message }) => {
        return `Updated message: ${message}`;
      },
    },
  };
  
  module.exports = resolvers;
  