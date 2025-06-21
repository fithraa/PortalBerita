import { useId, useEffect, useState, useRef } from "react";
import { useUser } from "../../context/UserContext";
import { Link, useNavigate } from "react-router-dom";
import { getRoleByToken } from "../../services/authService";
import RadioButton from "../RadioButton/RadioButton";
import getAllBeritaCategories from "../../services/getAllBeritaCategories";
import { useLocation } from "react-router-dom";

export default function Navbar({ onSearchChange, onCategoryChange }) {
  const inputId = useId();
  const { isLoggedIn, logout, accessSecret } = useUser();
  const navigate = useNavigate();
  const location = useLocation();

  const [categories, setCategories] = useState([
    { label: "All", value: "all" },
  ]);
  const [selectedCategory, setSelectedCategory] = useState("all");

  useEffect(() => {
    async function fetchCategories() {
      const allCategories = await getAllBeritaCategories();
      const newCategories = allCategories.map((cat) => ({
        label: cat.name,
        value: cat.slug,
      }));
  
      // Gabungkan dan hilangkan duplikat berdasarkan value
      const combined = [
        { label: "All", value: "all" },
        ...newCategories.filter(
          (cat, index, self) =>
            index === self.findIndex((c) => c.value === cat.value)
        ),
      ];
  
      setCategories(combined);
    }
  
    fetchCategories();
  }, []);
  
  const handleSearchInput = (e) => {
    onSearchChange?.(e.target.value);
  };

  const handleLogout = async (e) => {
    e.preventDefault();
    try {
      await logout();
      navigate("/signin");
    } catch (err) {
      console.error("Logout failed:", err);
    }
  };

  const handleCategoryChange = (value) => {
    setSelectedCategory(value);
    if (location.pathname !== "/") {
      navigate(`/`);
    } else {
      onCategoryChange?.(value);
    }
    
    
  };

  const userRoles = accessSecret ? [getRoleByToken(accessSecret)] : [];
  const hasRole = (role) => userRoles.includes(role);

  return (
    <div className="sticky top-0 z-50 bg-gradient-to-b from-[#A6FFE0] via-[#FAD0C4] to-[#8091FF] shadow-md">
    <div className="bg-gradient-to-b from-[#A6FFE0] via-[#FAD0C4] to-[#8091FF] shadow-md">
      <nav className="grid grid-cols-3 justify-between px-24 py-4 items-center">
        <ul className="flex items-center">
          <li>
            <Link to="/" className="text-xl font-bold flex items-center space-x-1">
              <span className="text-[#1d2342]">petirnews</span>
              <span className="text-[#6173E6]">.com</span>
            </Link>
          </li>
        </ul>

        <ul className="flex justify-center items-center w-full">
          <li className="w-full">
            <input
              type="text"
              id={inputId}
              placeholder="Search Berita..."
              className="text-black px-6 py-2 w-full rounded-full focus:outline-none focus:ring-2 focus:ring-[#6173E6] shadow-md"
              onChange={handleSearchInput}
              aria-label="Search for berita"
            />
          </li>
        </ul>

        {!isLoggedIn ? (
          <ul className="flex gap-4 justify-end">
            <li>
              <Link to="/signin" className="text-white hover:text-[#6173E6] font-medium">
                Sign In
              </Link>
            </li>
            <li>
              <Link to="/signup" className="text-white hover:text-[#6173E6] font-medium">
                Sign Up
              </Link>
            </li>
          </ul>
        ) : (
          <ul className="flex gap-4 justify-end">
            {hasRole("admin") && (
              <>
                <li>
                  <Link to="/berita/new" className="text-white hover:text-[#6173E6] font-medium">
                    New Berita
                  </Link>
                </li>
                <li>
                  <Link to="/categories" className="text-white hover:text-[#6173E6] font-medium">
                    Categories
                  </Link>
                </li>
              </>
            )}
            <li>
              <button onClick={handleLogout} className="text-white hover:text-[#6173E6] font-medium">
                Sign Out
              </button>
            </li>
          </ul>
        )}
      </nav>
      <div className="flex px-24 py-2">
        <RadioButton options={categories} defaultValue={"all"} onChange={handleCategoryChange} />
      </div>
    </div>
    </div>
  );
}
