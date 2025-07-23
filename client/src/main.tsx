import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { RouterProvider, createBrowserRouter } from "react-router";

import App from "./App";
import ArticleManagementPage from "./pages/ArticleManagementPage/ArticleManagementPage";
import ArticlePage from "./pages/ArticlePage/ArticlePage";
import EditArticlePage from "./pages/EditArticlePage/EditArticlePage";

const router = createBrowserRouter([
  {
    path: "/",
    element: <App />,
    children: [
      {
        path: "/article",
        element: <ArticlePage />,
      },
      {
        path: "/gestion",
        element: <ArticleManagementPage />,
      },
      {
        path: "/edit/:id",
        element: <EditArticlePage />,
      },
    ],
  },
]);

// Find the root element in the HTML document
const rootElement = document.getElementById("root");
if (rootElement == null) {
  throw new Error(`Your HTML Document should contain a <div id="root"></div>`);
}

// Render the app inside the root element
createRoot(rootElement).render(
  <StrictMode>
    <RouterProvider router={router} />
  </StrictMode>,
);
