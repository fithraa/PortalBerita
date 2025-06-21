import { Route, Routes } from "react-router-dom";
import { UserProvider } from "./context/UserContext";
import Berita from "./pages/Berita/Berita";
import BeritaDetail from "./pages/BeritaDetail/BeritaDetail";
import UploadBerita from "./pages/UploadBerita/UploadBerita";
import { ProtectedRoute, PublicRoute } from "./context/ProtectedRoute";
import Unauthorized from "./pages/Unauthorized/Unauthorized";
import CategoryCRUD from "./pages/Category/Category";
import SignIn from "./pages/Auth/Signin";
import SignUp from "./pages/Auth/Signup";
import NotFound from "./pages/NotFound/NotFound";

function App() {
  return (
    <>
      <UserProvider>
        <Routes>
          <Route path="/" element={<Berita />} />
          <Route path="/berita/:slug" element={<BeritaDetail />} />
          <Route path="*" element={<NotFound />}></Route>
          <Route path="/Unauthorized" element={<Unauthorized />}></Route>
          
          <Route element={<ProtectedRoute requiredRoles={'admin'} />}>
          <Route path="/berita/new" element={<UploadBerita />} />
          </Route>
          <Route element={<ProtectedRoute requiredRoles={["admin"]} />}>
            <Route path="/categories" element={<CategoryCRUD />}></Route>
          </Route>

          <Route element={<PublicRoute />}>
            <Route path="/signin" element={<SignIn />} />
            <Route path="/signup" element={<SignUp />} />
          </Route>
        </Routes>
      </UserProvider>
    </>
  );
}

export default App;



// import React from 'react';
// import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
// import Navbar from './components/Navbar/Navbar';
// import BerandaBerita from './pages/user/Beranda/BerandaBerita';
// import DetailBerita from './pages/user/DetailBerita/DetailBerita';


// function App() {
//   return (
//     <Router>
//       {/* <Navbar isLoggedIn={false} setIsLoggedIn={() => {}} /> */}
//       <Routes>
//         <Route path="/" element={<BerandaBerita />} />
//         <Route path="/berita/:id" element={<DetailBerita />} />
//       </Routes>
//     </Router>
//   );
// }

// export default App;
