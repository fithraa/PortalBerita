import { useEffect, useState, useRef, useTransition } from "react";
import { getAllberita } from "../../services/getAllberita";
import BeritaList from "../../components/BeritaList/BeritaList";
import Navbar from "../../components/Navbar/Navbar";
import RadioButton from "../../components/RadioButton/RadioButton";
import getAllBeritaCategories from "../../services/getAllBeritaCategories";
import { useSearchParams } from "react-router-dom";

function berita() {
  const [berita, setberita] = useState([]);
  // const RadioButtonOpts = useRef([
  //   {
  //     label: "All",
  //     value: "all",
  //   },
  // ]);

  const [searchParams] = useSearchParams();
  useEffect(() => {
    const kategoriDariQuery = searchParams.get("kategori");
    if (kategoriDariQuery) {
      setSelectedCategory(kategoriDariQuery);
    }
  }, [searchParams]);
  
  const originalberita = useRef([]);
  const [isPending, startTransition] = useTransition();
  const [selectedCategory, setSelectedCategory] = useState("all");
  const [searchQuery, setSearchQuery] = useState("");

  useEffect(() => {
    async function fetchberita() {
      let allberita = await getAllberita();
      allberita = allberita.length > 0 ? allberita : [];
      originalberita.current = allberita;
      setberita(allberita);
    }

    
    fetchberita();
    // console.log(originalberita);
  }, []);

  useEffect(() => {
    startTransition(() => {
      const filtered = originalberita.current.filter((Berita) => {
        const matchedCategory =
          selectedCategory === "all" ||
          Berita.category_slug === selectedCategory;
        const matchesSearch = Berita.name
          .toLowerCase()
          .includes(searchQuery.toLowerCase());

        return matchedCategory && matchesSearch;
      });
      setberita(filtered);
    });
  }, [selectedCategory, searchQuery]);

  const handleCategoryChange = (category) => {
    setSelectedCategory(category);
  };

  const handleSearchChange = (query) => {
    setSearchQuery(query);
  };
  
  return (
    <>
      <Navbar onSearchChange={handleSearchChange} onCategoryChange={handleCategoryChange} />

      <section className="container px-24 py-4">
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-1 mx-auto">
          <BeritaList berita={berita} isPending={isPending} />
        </div>
      </section>
    </>
  );
}
export default berita;
