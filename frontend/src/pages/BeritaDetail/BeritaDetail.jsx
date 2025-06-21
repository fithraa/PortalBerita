import { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";
import { getAllberita } from "../../services/getAllberita";
import Navbar from "../../components/Navbar/Navbar";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faArrowLeftLong,
  faCartShopping,
} from "@fortawesome/free-solid-svg-icons";
import Button from "../../components/Button/Button";
import formatToIDRCurrency from "../../utils/formatToIDRCurrency";

export default function BeritaDetail() {
  const { slug } = useParams();
  const [Berita, setBerita] = useState({});

  useEffect(() => {
    const fetchBerita = async () => {
      const allberita = await getAllberita();
      const Berita = allberita.find((prod) => prod.slug === slug);
      setBerita(Berita);
    };

    fetchBerita();
  }, []);
  return (
    <>
      <Navbar></Navbar>
      <div className="flex px-24 py-4 gap-[48px] items-center">
        <Link to="/">
          <FontAwesomeIcon
            icon={faArrowLeftLong}
            className="mb-0 text-[40px]"
          />
        </Link>
        <h4 className="text-[32px] font-medium">
          {Berita.name ?? "No Label"}
        </h4>
      </div>
      <div className="flex gap-[30px] px-24">
      <div className="flex flex-col gap-6 px-24 max-w-[900px] mx-auto">
  <img
    src={`http://localhost:8000${Berita?.Berita_image_url}` ?? ""}
    alt={Berita.name ?? "No Name"}
    className="w-full h-[500px] object-cover rounded"
  />

  {/* <h2 className="text-[32px] font-semibold">{Berita.name ?? "No Title"}</h2> */}

  <p className="text-gray-700 whitespace-pre-line text-justify">
    {Berita.description ?? "Tidak ada deskripsi."}
  </p>
</div>

      </div>
    </>
  );
}
