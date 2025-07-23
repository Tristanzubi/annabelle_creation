import AddArticle from "../../components/AddArticle/AddArticle";
import ArticleList from "../../components/ArticleList/ArticleList";

function ArticleManagementPage() {
  return (
    <div>
      <h1>Gestion des articles</h1>
      <AddArticle />
      <ArticleList />
    </div>
  );
}

export default ArticleManagementPage;
