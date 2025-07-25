import databaseClient, { type Result } from "../../../database/client";

class ArticleRepository {
  async readAll() {
    const [result] = await databaseClient.query("SELECT * FROM article");
    return result;
  }

  async readById(id: number) {
    const [rows] = await databaseClient.query(
      `SELECT 
       a.*, 
       m.name AS maker_name, 
       m.description AS maker_description, 
       m.image AS maker_image
     FROM article a
     JOIN maker m ON a.maker_id = m.id
     WHERE a.id = ?`,
      [id],
    );
    return rows;
  }

  async createArticle(body: Article) {
    const [result] = await databaseClient.query(
      "INSERT INTO article (title, description, image, price, maker_id) VALUES (?, ?, ?, ?, ?)",
      [body.title, body.description, body.image, body.price, body.maker_id],
    );
    return result;
  }

  async updateArticle(article: Article) {
    const [result] = await databaseClient.query<Result>(
      "UPDATE article SET title = ?, description = ?, image = ?, price = ? WHERE id = ?",
      [
        article.title,
        article.description,
        article.image,
        article.price,
        article.id,
      ],
    );
    return result.affectedRows;
  }

  async deleteArticle(id: number) {
    const [result] = await databaseClient.query<Result>(
      "DELETE FROM article WHERE id = ?",
      [id],
    );
    return result.affectedRows;
  }
}

export default new ArticleRepository();
