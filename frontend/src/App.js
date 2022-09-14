

import {BrowserRouter,Routes,Route,} from 'react-router-dom';
import Login from './pages/login.js';
import Sign from './pages/signup.js';
import SignDoc from './pages/doctor_signup.js';
import LoginDoc from './pages/doctor_login.js';
import Index from './pages/index.js';



function App() {
  return (
    <BrowserRouter>
        <Routes>
            <Route path="/" element={<Index/>} />
            <Route path="/login" element={<Login/>} />
            <Route path="/signup" element={<Sign/>} />
            <Route path="/login_doc" element={<LoginDoc/>} />
            <Route path="/signup_doc" element={<SignDoc/>} />
         
        </Routes>
      </BrowserRouter>
  );
}

export default App;
