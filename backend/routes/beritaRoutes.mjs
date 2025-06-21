import { Router } from "express";
import { createBerita, getAllberita, getBerita, getBeritaBySlug } from "../controllers/beritaController.mjs";
import fileUpload from "express-fileupload";
import { BeritaValidationSchema } from "../validators/Berita-validator.mjs";
import { handleValidationErrors } from "../middlewares/handle-validation.mjs";
import { uploadFile } from "../middlewares/upload-middleware.mjs";


const BeritaRoutes = Router()
BeritaRoutes.use(fileUpload())

BeritaRoutes.get('/slug/:slug', getBeritaBySlug)
BeritaRoutes.get('/:id', getBerita)
BeritaRoutes.get('/', getAllberita)
BeritaRoutes.post('/',  BeritaValidationSchema,
  handleValidationErrors,
  uploadFile,createBerita)



export default BeritaRoutes