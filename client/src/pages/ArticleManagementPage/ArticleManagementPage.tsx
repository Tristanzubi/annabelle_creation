import "./ArticleManagementPage.css";
import AddArticle from "../../components/AddArticle/AddArticle";
import ArticleList from "../../components/ArticleList/ArticleList";

function ArticleManagementPage() {
  return (
    <main className="article-management-page">
      <h1>Gestion des articles</h1>
      <AddArticle />
      <h2>Modifier ou supprimer un article</h2>
      <ArticleList />
    </main>
  );
}

export default ArticleManagementPage;
