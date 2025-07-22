import express from "express";

const router = express.Router();

/* ************************************************************************* */
// Define Your API Routes Here
/* ************************************************************************* */

// Define item-related routes
import articleActions from "./modules/article/articleActions";

router.get("/api/article", articleActions.browse);

/* ************************************************************************* */

export default router;
