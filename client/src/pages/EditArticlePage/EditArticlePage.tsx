function EditArticlePage() {
  return (
    <div className="edit-article-page">
      <h1>Edit Article</h1>
      <section className="add-article">
        <h1>Modifier l'article</h1>
        <form className="form" /* action={handleSubmit}*/>
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
          <button type="submit">Modifier</button>
        </form>
      </section>
    </div>
  );
}

export default EditArticlePage;
