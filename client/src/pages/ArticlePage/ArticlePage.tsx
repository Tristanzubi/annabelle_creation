import { useEffect, useState } from "react";
import "./ArticlePage.css";
import ArticleCard from "../../components/ArticleCard/ArticleCard";

function ArticlePage() {
  const [article, setArticle] = useState<Article[]>([]);

  useEffect(() => {
    fetch("http://localhost:3310/api/article")
      .then((res) => res.json())
      .then((data) => setArticle(data));
  }, []);

  return (
    <main className="article-page">
      <h1>Articles</h1>
      <section>
        {article.map((article) => (
          <ArticleCard key={article.id} article={article} />
        ))}
      </section>
    </main>
  );
}

export default ArticlePage;
