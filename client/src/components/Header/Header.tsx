import { Link } from "react-router";
import "./Header.css";

function Header() {
  return (
    <header className="header">
      <h1>Annabelle Création</h1>
      <nav>
        <ul>
          <li>
            <Link to="/">Accueil</Link>
          </li>
          <li>
            <Link to="/article">Articles</Link>
          </li>
          <li>
            <Link to="/creators">Créateurs</Link>
          </li>
          <li>
            <Link to="/gestion">Gestion</Link>
          </li>
        </ul>
      </nav>
    </header>
  );
}
export default Header;
