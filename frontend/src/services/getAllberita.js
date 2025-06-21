import axios from "axios";

export const getAllberita = async () => {
  try {
    const response = await axios.get(`${import.meta.env.VITE_BACKEND_URL}/api/v1/berita`);
    return response.data.data.berita;
  } catch (error) {
    console.error("Error fetching berita:", error);
    return [];
  }
};
