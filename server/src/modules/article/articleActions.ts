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

export default {
  browse,
};
