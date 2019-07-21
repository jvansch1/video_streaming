module.exports = {
  context: __dirname + "/src",
  entry: './App.jsx',

  output: {
    filename: "app.js",
    path: __dirname + "/dist"
  },

  module: {
    rules: [
      {
        test: /\.jsx?$/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env', '@babel/preset-react']
          }
        },
      }
    ]
  },
  devServer: {
    port: '8080'
  }
}
