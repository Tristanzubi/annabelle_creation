import "./Header.css";

function Header() {
  return (
    <header className="header">
      <h1>Annabelle Création</h1>
      <nav>
        <ul>
          <li>
            <a href="/">Accueil</a>
          </li>
          <li>
            <a href="/articles">Articles</a>
          </li>
          <li>
            <a href="/creators">Créateurs</a>
          </li>
          <li>
            <a href="/contact">Contact</a>
          </li>
        </ul>
      </nav>
    </header>
  );
}
export default Header;
