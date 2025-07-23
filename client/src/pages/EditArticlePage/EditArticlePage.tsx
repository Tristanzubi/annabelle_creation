import { useEffect, useState } from "react";
import { useParams } from "react-router";
import { ToastContainer, toast } from "react-toastify";

function EditArticlePage() {
  const [article, setArticle] = useState<Article>();
  const { id } = useParams();

  useEffect(() => {
    fetch(`http://localhost:3310/api/article/${id}`)
      .then((res) => res.json())
      .then((data) => {
        setArticle(data[0]);
      });
  }, [id]);

  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const formData = new FormData(e.currentTarget);
    const formObject = Object.fromEntries(formData.entries());
    fetch(`http://localhost:3310/api/article/${id}`, {
      credentials: "include",
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formObject),
    })
      .then((res) => res.json())
      .then(() => {
        toast.success("Article modifié avec succès !");
        fetch(`http://localhost:3310/api/article/${id}`, {
          credentials: "include",
        })
          .then((res) => res.json())
          .then((data) => {
            setArticle(data[0]);
          });
      });
  };

  if (!article) return <div>Chargement...</div>;

  return (
    <>
      <div className="edit-article-page">
        <h1>Edit Article</h1>
        <section className="add-article">
          <h1>Modifier l'article</h1>
          <form className="form" onSubmit={handleSubmit}>
            <label htmlFor="title"> Titre de l'oeuvre </label>
            <input type="text" name="title" defaultValue={article.title} />

            <label htmlFor="description"> Description de l'article</label>
            <input
              id="description"
              type="text"
              name="description"
              defaultValue={article.description}
            />

            <label htmlFor="image"> Image URL </label>
            <input type="text" name="image" defaultValue={article.image} />

            <label htmlFor="price"> Tarif:</label>
            <input type="text" name="price" defaultValue={article.price} />

            <select name="maker_id" required defaultValue={article.maker_id}>
              <option value="">-- Sélectionner un créateur --</option>
              <option value={1}>Janique</option>
              <option value={2}>Théo</option>
            </select>
            <button type="submit">Modifier</button>
          </form>
        </section>
      </div>
      <ToastContainer />
    </>
  );
}

export default EditArticlePage;
