import { useEffect, useState } from "react";
import "./ArticleDetailPage.css";
import { useParams } from "react-router";
import ArticleCard from "../../components/ArticleCard/ArticleCard";

function ArticleDetailPage() {
  const { id } = useParams();
  const [article, setArticle] = useState<Article | null>(null);

  useEffect(() => {
    fetch(`http://localhost:3310/api/article/${id}`)
      .then((res) => res.json())
      .then((data) => setArticle(data[0]));
  }, [id]);

  if (!article) {
    return (
      <main className="article-detail-page">
        <p>Chargement...</p>
      </main>
    );
  }

  return (
    <main className="article-detail-page">
      <article>
        <ArticleCard article={article} />
        <p className="description">{article.description}</p>
      </article>
      <h2>Créateur</h2>
      <div className="maker-detail">
        <p>Créé par : {article.maker_name}</p>
        <img src={article.maker_image} alt={article.maker_name} />
      </div>
    </main>
  );
}

export default ArticleDetailPage;
