import { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router";
import "./ArticleList.css";

function ArticleList() {
  const [article, setArticle] = useState<Article[]>([]);
  const navigate = useNavigate();

  useEffect(() => {
    fetch("http://localhost:3310/api/article")
      .then((res) => res.json())
      .then((data) => {
        setArticle(data);
      });
  }, []);

  const handleDelete = (id: number) => {
    fetch(`http://localhost:3310/api/article/${id}`, {
      method: "DELETE",
      credentials: "include",
    }).then((res) => {
      if (res.status === 200) {
        navigate("/");
      }
    });
  };

  return (
    <table className="article-list">
      <thead>
        <tr>
          <th>Titre</th>
          <th>Prix</th>
          <th>Image</th>
          <th>Créateur</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        {article.map((article) => (
          <tr key={article.id}>
            <td>{article.title}</td>
            <td>{article.price}€</td>
            <td>
              <img src={article.image} alt={article.title} />
            </td>
            <td>{article.maker_id}</td>
            <td>
              <Link to={`/edit/${article.id}`}>
                <button type="button">Modifier</button>
              </Link>
              <button type="button" onClick={() => handleDelete(article.id)}>
                Supprimer
              </button>
            </td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}

export default ArticleList;
