import databaseClient from "../../../database/client";

class ArticleRepository {
  async readAll() {
    const [result] = await databaseClient.query("SELECT * FROM article");
    return result;
  }

  async readById(id: number) {
    const [rows] = await databaseClient.query(
      "SELECT * FROM article WHERE id = ?",
      [id],
    );
    return rows;
  }
}

export default new ArticleRepository();
