import databaseClient from "../../../database/client";

class ArticleRepository {
  async readAll() {
    const [result] = await databaseClient.query("SELECT * FROM article");
    return result;
  }
}

export default new ArticleRepository();
