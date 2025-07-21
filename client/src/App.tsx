import { Outlet } from "react-router";
import Header from "./components/Header/Header";
import "./global.css";

function App() {
  return (
    <>
      <Header />
      <Outlet />
    </>
  );
}

export default App;
