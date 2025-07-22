import "./ArticleCard.css";

function ArticleCard({ article }: { article: Article }) {
  return (
    <article className="article-card">
      <h2>{article.title}</h2>
      <img src={article.image} alt={article.title} />
      <p className="price">{article.price} €</p>
    </article>
  );
}

export default ArticleCard;
