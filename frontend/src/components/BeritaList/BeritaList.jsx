import PropTypes from 'prop-types';
import BeritaCard from '../BeritaCard/BeritaCard';

export default function BeritaList({berita}) {
  return (
    <>
      {berita.length > 0  ? (
        berita.map((Berita, index) => 
       
            <BeritaCard Berita={Berita} index={index} key={Berita?.id ?? index} />
        )
      ) : <h5 className='text-center col-span-4 text-2xl'>
              There&apos;s no berita currently.
          </h5>
          }
    </>
  )
}

BeritaList.propTypes = {
  berita: PropTypes.arrayOf(PropTypes.object).isRequired,
}