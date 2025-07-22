import express from "express";

const router = express.Router();

/* ************************************************************************* */
// Define Your API Routes Here
/* ************************************************************************* */

// Define item-related routes
import articleActions from "./modules/article/articleActions";

router.get("/api/article", articleActions.browse);
router.get("/api/article/:id", articleActions.readById);
router.post("/api/article", articleActions.createArticle);
router.put("/api/article/:id", articleActions.editArticle);

/* ************************************************************************* */

export default router;
