import { faCartShopping } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

import PropTypes from "prop-types";
import formatToIDRCurrency from "../../utils/formatToIDRCurrency";
import Button from "../Button/Button";
import { Link } from "react-router-dom";

export default function BeritaCard({ Berita }) {
  return (
    <Link
      to={`/berita/${encodeURIComponent(Berita.slug)}` ?? ""}
      className="flex flex-col max-w-[370px] flex-wrap p-[16px] bg-[#081116] hover:ring-opacity-40 active:ring-5 active:ring-[#6247eb] hover:ring-4 active:ring-2 active:ring-opacity-90"
    >
      <img
        src={`http://localhost:8000${Berita?.Berita_image_url}` ?? ""}
        alt={Berita?.name ?? "No Title"}
        className="block max-h-[300px] mb-4 object-cover"
      />
      <div className="flex flex-col gap-2">
        <h4 className="font-medium text-[20px] text-white">
          {Berita?.name ?? "No Title"}
        </h4>
        <span className="block font-medium text-[14px] text-[#eaeaea]">
          {Berita?.category_name ?? "Uncategorized"}
        </span>
        <br></br>
        <p
            className="abstrak-text block font-medium text-[16px] text-white"
            dangerouslySetInnerHTML={{
              __html: Berita.abstrak ?? "No abstrak.",
            }}
          />
        
      </div>
    </Link>
  );
}

BeritaCard.prototypes = {
  Berita: PropTypes.object.isRequired,
};
