import React from 'react';

import Home from './components/home.jsx';
import { BrowserRouter as Router, Route } from 'react-router-dom';

const App = () => {
  return (
    <Router>
      <Route path="/home" exact component={Home} />
    </Router>
  )
}

export default App;
