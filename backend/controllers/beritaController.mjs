import database from "../config/database.mjs";
import { deleteFile } from "../middlewares/upload-middleware.mjs";
import path from "path";
import normalizeFilePath from "../utils/normalize-file-path.mjs";

export const getAllberita = async (req, res) => {
  try {
    const [berita] = await database.query(`
      SELECT 
           p.*, 
           c.name AS category_name, 
           c.slug AS category_slug,
           i.image_url AS Berita_image_url,
           i.image_path AS Berita_image_path
         FROM berita p
         LEFT JOIN categories c ON p.category_id = c.id
         LEFT JOIN images i ON p.id = i.Berita_id
         
    `);
    res.status(200).json({
      status: "success",
      data: { berita },
      message: "berita fetched successfully",
    });
  } catch (error) {
    res.status(500).json({
      status: "error",
      error: "Cannot fetch berita",
      err_code: "CANT_GET_berita",
    });
  }
};

export const getBeritaBySlug = async (req, res) => {
  const { slug } = req.params;

  try {
    const [Berita] = await database.query(
      `SELECT 
           p.*, 
           c.name AS category_name, 
           c.slug AS category_slug,
           i.image_url AS Berita_image_url,
           i.image_path AS Berita_image_path
         FROM berita p
         LEFT JOIN categories c ON p.category_id = c.id
         LEFT JOIN images i ON p.id = i.Berita_id
         WHERE p.slug = ?`,
      [slug]
    );

    // Check if the Berita exists
    if (Berita.length === 0) {
      return res.status(404).json({
        status: "not found",
        data: { Berita: null },
        message: "Berita not found",
      });
    }

    // Respond with Berita details
    res.status(200).json({
      status: "success",
      data: { Berita: Berita[0] },
      message: "Berita fetched successfully",
    });
  } catch (error) {
    res.status(500).json({
      status: "error",
      error: "Error fetching Berita",
      err_code: "CANT_GET_Berita",
    });

    throw new Error("CANNOT FETCH Berita: " + error.message);
  }
};

export const getBerita = async (req, res) => {
  const { id } = req.params;

  try {
    const [Berita] = await database.query(
      `SELECT 
             p.*, 
             c.name AS category_name, 
             c.slug AS category_slug,
             i.image_url AS Berita_image_url,
             i.image_path AS Berita_image_path
           FROM berita p
           LEFT JOIN categories c ON p.category_id = c.id
           LEFT JOIN images i ON p.id = i.Berita_id
           WHERE p.id = ?`,
      [id]
    );

    // Check if the Berita exists
    if (Berita.length === 0) {
      return res.status(404).json({
        status: "not found",
        data: { Berita: null },
        message: "Berita not found",
      });
    }

    // Respond with Berita details
    res.status(200).json({
      status: "success",
      data: { Berita: Berita[0] },
      message: "Berita fetched successfully",
    });
  } catch (error) {
    res.status(500).json({
      status: "error",
      error: "Error fetching Berita",
      err_code: "CANT_GET_Berita",
    });

    throw new Error("CANNOT FETCH Berita: " + error.message);
  }
};

export const createBerita = async (req, res) => {
  const { slug, name, category_id, abstrak, description } = req.body;

  try {
    const [existingBerita] = await database.query(
      "SELECT id FROM berita WHERE slug = ?",
      [slug]
    );

    if (existingBerita.length > 0) {
      deleteFile(req.uploadedFilePath);
      return res.status(409).json({
        status: "conflict",
        message: "A Berita with this slug already exists",
        err_code: "CONFLICT_DUPLICATE",
      });
    }

    const [berita] = await database.query(
      "INSERT INTO berita (slug, name, category_id, abstrak, description) VALUES (?, ?, ?, ?, ?)",
      [slug, name, category_id, abstrak, description]
    );

    if (req.uploadedFileName) {
      await database.query(
        "INSERT INTO images (berita_id, image_url, image_path) VALUES (?, ?, ?)",
        [
          berita.insertId,
          `/public/images/${req.uploadedFileName}`,
          req.uploadedFilePath,
        ]
      );
    }

    res.status(201).json({
      status: "success",
      data: { beritaId: berita.insertId },
      message: "Berita created successfully",
    });
  } catch (error) {
    deleteFile(req.uploadedFilePath);
    res.status(500).json({
      status: "error",
      message: "Error creating Berita",
      err_code: "SERVER_ERROR",
      error: error.message,
    });
  }
};


export const createBeritaMulter = async (req, res) => {
  const { slug, name, category_id, price, stock, description } = req.body;

  try {
    const [existingBerita] = await database.query(
      "SELECT id FROM berita WHERE slug = ?",
      [slug]
    );

    if (existingBerita.length > 0) {
      deleteFile(req.uploadedFilePath);
      return res.status(409).json({
        status: "conflict",
        message: "A Berita with this slug already exists",
        err_code: "CONFLICT_DUPLICATE",
      });
    }

    const [Berita] = await database.query(
      "INSERT INTO berita (slug, name, category_id, price, stock, description) VALUES (?, ?, ?, ?, ?, ?)",
      [slug, name, category_id, price, stock, description]
    );

    // Normalize the file path before inserting it into the database
    if (req.uploadedFileName) {
      const normalizedImagePath = normalizeFilePath(
        path.join("public", "images", req.uploadedFileName)
      );

      await database.query(
        "INSERT INTO images (Berita_id, image_url, image_path) VALUES (?, ?, ?)",
        [
          Berita.insertId,
          `./public/images/${req.uploadedFileName}`, // Image URL
          normalizedImagePath, // Normalized Image Path
        ]
      );
    }

    res.status(201).json({
      status: "success",
      data: { BeritaId: Berita.insertId },
      message: "Berita created successfully",
    });
  } catch (error) {
    deleteFile(req.uploadedFilePath);
    res.status(500).json({
      status: "error",
      message: "Error creating Berita",
      err_code: "SERVER_ERROR",
      error: error.message,
    });
  }
};