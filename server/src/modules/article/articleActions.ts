import type { RequestHandler } from "express";
import articleRepository from "./articleRepository";

const browse: RequestHandler = async (req, res, next) => {
  try {
    const result = await articleRepository.readAll();
    res.json(result);
  } catch (error) {
    next(error);
  }
};

const readById: RequestHandler = async (req, res, next) => {
  try {
    const id = Number(req.params.id);
    const result = await articleRepository.readById(id);

    if (!result) {
      res.status(404).json("article not found");
    } else {
      res.json(result);
    }
  } catch (error) {
    next(error);
  }
};

const createArticle: RequestHandler = async (req, res, next) => {
  try {
    const createArticle = await articleRepository.createArticle(req.body);
    if (createArticle) {
      res.status(200).json("Article created successfully");
    } else {
      res.status(404).json("Failed to create article");
    }
  } catch (error) {
    next(error);
  }
};

export default {
  browse,
  readById,
  createArticle,
};
