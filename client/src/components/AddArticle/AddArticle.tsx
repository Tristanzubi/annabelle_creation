import { useParams } from "react-router";
import { ToastContainer, toast } from "react-toastify";
import "./AddArticle.css";

function AddArticle() {
  const { articleId } = useParams();

  const handleSubmit = (data: FormData) => {
    const values = Object.fromEntries(data);
    const FormData = {
      ...values,
      articleId: Number(articleId),
      price: Number(values.price),
    };

    fetch("http://localhost:3310/api/article", {
      method: "POST",
      credentials: "include",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(FormData),
    });
    toast.success("Article ajouté avec succès !");
  };
  return (
    <>
      <section className="add-article">
        <h1>Ajouter un article</h1>
        <form className="form" action={handleSubmit}>
          <label htmlFor="title"> Titre de l'oeuvre </label>
          <input type="text" name="title" />

          <label htmlFor="description"> Description de l'article</label>
          <input id="description" type="text" name="description" />

          <label htmlFor="image"> Image URL </label>
          <input type="text" name="image" />

          <label htmlFor="price"> Tarif:</label>
          <input type="text" name="price" />

          <select name="maker_id" required>
            <option value="">-- Sélectionner un créateur --</option>
            <option value={1}>Janique</option>
            <option value={2}>Théo</option>
          </select>
          <button type="submit">Ajouter</button>
        </form>
      </section>
      <ToastContainer />
    </>
  );
}

export default AddArticle;
