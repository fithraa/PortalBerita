import axios from "axios";

async function getAllBeritaCategories() {
  try {
    const response = await axios.get(`${import.meta.env.VITE_BACKEND_URL}/api/v2/categories`);
    return response.data.data;
  } catch (error) {
    console.error("Error fetching Berita categories:", error);
    return [];
  }
}

export default getAllBeritaCategories;
